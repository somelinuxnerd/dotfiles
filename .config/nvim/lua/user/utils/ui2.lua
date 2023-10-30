local api = vim.api
local cmd = vim.cmd
local fn = vim.fn

local function clear_cmdline(timeout)

	vim.validate({ timeout = { timeout, 'number', true } })

	timeout = timeout or 0

	fn.timer_start(timeout, function()
		api.nvim_feedkeys(':', 'nx', false)
	end)

end

local function await_keypress(keys)

    vim.validate({ keys = { keys, { 'table', 'string' }, true } })

    if type(keys) == 'string' then
        keys = { keys }
    end

    local codes = {
        ['\27'] = 'escape',
        ['\r'] = 'enter',
        ['^I'] = 'tab',
        [' '] = 'space',
    }

    local input

    while true do

        input = fn.getcharstr()

        if keys == nil or vim.tbl_contains(keys, input) or vim.tbl_contains(keys, codes[input]) then
            return
        end

    end

end

local M = {}

M.is_headless = #api.nvim_list_uis() == 0

function M.print_timeout(message, timeout)

    vim.validate({
        message = { message, 'string', false },
        timeout = { timeout, 'number', true }
    })

    timeout = timeout or 2500

    clear_cmdline()

    print(message)

    vim.defer_fn(clear_cmdline, timeout)

end

local prompt = {}

-- Prompt the user with a confirmation message and return a boolean value representing yes or no
-- @param message string: The message the user is prompted with
-- @param default bool: The default response if the user does not specify one
-- @return boolean|nil
function prompt.yesno(message, default)

	vim.validate({
		message = { message, 'string', false },
		default = { default, 'boolean', false }
	})

	local option_box = default and '[Y/n]' or '[y/N]'

	message = string.format('%s %s ', message, option_box)

	local input_ok, input = pcall(fn.input, message)
	if not input_ok then
		return nil
	end

	if string.lower(input) == 'y' then
		return true
	elseif string.lower(input) == 'n' then
		return false
	end

	return default and true or false

end

-- Prompt the user with an input message and return the value
-- @param message string: The message the user is prompted with
-- @return string|nil
function prompt.input(message)
	local status_ok, input = pcall(fn.input, message)
	if not status_ok then
		return nil
	end
	return input
end

-- Prompt the user with a message and wait for a carriage return to be pressed
-- @param message string: The message the user is shown
-- @return boolean|nil
function prompt.enter_key(message)

	print(message)

	local status_ok
	local key

	while status_ok ~= false and key ~= 13 do
		status_ok, key = pcall(fn.getchar)
	end

	clear_cmdline()

	if not status_ok then
		return nil
	end

	return true

end

-- Prompt the user with a message and wait for any key to be pressed
-- @param message string: The message the user is shown
-- @return boolean|nil
function prompt.keypress(message)

	print(message)

	local status_ok, _ = pcall(fn.getchar)

	clear_cmdline()

	if not status_ok then
		return nil
	end

	return true

end

M.prompt = prompt

local screen = {}

function screen.width()
	return api.nvim_get_option("columns")
end

function screen.height()
	return api.nvim_get_option("lines")
end

function screen.dimensions()
	return api.nvim_get_option("columns"), api.nvim_get_option("lines")
end

function screen.redraw(force)
    cmd.redraw({ bang = force })
end

M.screen = screen

function M.popup_message(message, opts)

    vim.validate({
        message = { message, 'string', false },
        opts = { opts, 'table', true },
        level = { opts.level, 'string', true },
        keys = { opts.keys, 'table', true },
        timeout = { opts.timeout, 'number', true },
        vertical_padding = { opts.vertical_padding, 'number', true },
        horizontal_padding = { opts.horizontal_padding, 'number', true },
        border = { opts.border, 'string', true }
    })

	local default_opts = {
		level = nil,
		keys = nil,
		timeout = nil,
		vertical_padding = 0,
		horizontal_padding = 2,
		border = 'rounded'
	}

	opts = vim.tbl_deep_extend('force', default_opts, opts)

	assert(opts.keys == nil or opts.timeout == nil, "cannot assign both timeout and keys")

	if not opts.keys and not opts.timeout then
        opts.timeout = 2500
    end

    local screen_width = api.nvim_get_option("columns")
    local screen_height = api.nvim_get_option("lines")

    local window_width = (opts.horizontal_padding * 2) + #message
    local window_height = (opts.vertical_padding * 2) + 1

    local window_x = math.floor((screen_width - window_width) / 2)
    local window_y = math.floor((screen_height - window_height) / 2)

    local padded_message = string.rep(" ", opts.horizontal_padding) .. message .. string.rep(" ", opts.horizontal_padding)

    local lines = {}
	for _ = 1, opts.vertical_padding do table.insert(lines, '') end
    table.insert(lines, padded_message)
	for _ = 1, opts.vertical_padding do table.insert(lines, '') end

    local buf = api.nvim_create_buf(false, true)

	api.nvim_buf_set_lines(buf, 0, -1, false, lines)

	api.nvim_buf_set_option(buf, 'buflisted', false)
	api.nvim_buf_set_option(buf, 'modifiable', false)

    local opts = {
        style = 'minimal',
        relative = 'editor',
        focusable = false,
        width = window_width,
        height = window_height,
        col = window_x,
        row = window_y,
        border = opts.border,
    }

    local win = api.nvim_open_win(buf, false, opts)

	if opts.level == 'error' then
		api.nvim_win_set_option(win, "winhighlight", "NormalFloat:ErrorMsg,FloatBorder:ErrorMsg")
	elseif opts.level == 'warning' then
		api.nvim_win_set_option(win, "winhighlight", "NormalFloat:ErrorMsg,WarningBorder:WarningMsg")
	end

    local check = vim.loop.new_prepare()
    local prompted = false

    vim.loop.prepare_start(
        check,
        vim.schedule_wrap(function()
            if not api.nvim_win_is_valid(win) then
                return
            end
            vim.loop.prepare_stop(check)
            if not prompted then
                prompted = true

                if opts.keys ~= nil then
					await_keypress('enter')
                    api.nvim_win_close(win, true)
					vim.cmd("redraw!")
				else
                    vim.fn.timer_start(opts.timeout, function()
                        api.nvim_win_close(win, true)
						vim.cmd("redraw!")
                    end)
				end

			end
        end)
    )

end

return M