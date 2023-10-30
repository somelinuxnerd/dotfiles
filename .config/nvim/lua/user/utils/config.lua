local M = {}

local scan_dir = require('plenary.scandir').scan_dir
local fs = require("user.utils.fs")

M.lua_reload_dirs = { vim.fn.stdpath('config') }
M.vim_reload_dirs = { vim.fn.stdpath('config'), vim.fn.stdpath('data') .. '/site/pack/*/start/*'}

local viml_subdirs = {
    'compiler',
    'doc',
    'keymap',
    'syntax',
    'plugin'
}

local function escape_str(str)

    local patterns_to_escape = {
        '%^',
        '%$',
        '%(',
        '%)',
        '%%',
        '%.',
        '%[',
        '%]',
        '%*',
        '%+',
        '%-',
        '%?'
    }

    return string.gsub(str, string.format("([%s])", table.concat(patterns_to_escape)), '%%%1')

end

local function get_runtime_files_in_path(runtimepath)

	-- Ignore opt plugins
    if string.match(runtimepath, "/site/pack/.-/opt") then
        return {}
    end

    local runtime_files = {}

    -- Search each subdirectory listed listed in viml_subdirs of runtimepath for files
    for _, subdir in ipairs(viml_subdirs) do
        local viml_path = string.format("%s/%s", runtimepath, subdir)

        if fs.exists(viml_path) then
            local files = scan_dir(viml_path, { search_pattern = '%.n?vim$', hidden = true })

            for _, file in ipairs(files) do
                runtime_files[#runtime_files+1] = file
            end
        end
    end

    return runtime_files

end

local function get_lua_modules_in_path(runtimepath)

    local luapath = string.format("%s/lua", runtimepath)

    if not fs.exists(luapath) then
        return {}
    end

    -- Search lua directory of runtimepath for modules
    local modules = scan_dir(luapath, { search_pattern = '%.lua$', hidden = true })

    for i, module in ipairs(modules) do
        -- Remove runtimepath and file extension from module path
        module = string.match(
            module,
            string.format(
                '%s/(.*)%%.lua',
                escape_str(luapath)
            )
        )

        -- Changes slash in path to dot to follow lua module format
        module = string.gsub(module, "/", ".")

        -- If module ends with '.init', remove it.
        module = string.gsub(module, "%.init$", "")

        -- Override previous value with new value
        modules[i] = module
    end

    return modules

end

local function reload_runtime_files()
    for _, runtimepath_suffix in ipairs(M.vim_reload_dirs) do
		local paths = vim.fn.glob(runtimepath_suffix, 0, 1)
        for _, path in ipairs(paths) do
            local runtime_files = get_runtime_files_in_path(path)

            for _, file in ipairs(runtime_files) do
                vim.cmd('source ' .. file)
            end
        end
    end

end

local function unload_modules()
    for _, runtimepath_suffix in ipairs(M.lua_reload_dirs) do
		local paths = vim.fn.glob(runtimepath_suffix, 0, 1)
        for _, path in ipairs(paths) do
            local modules = get_lua_modules_in_path(path)

            for _, module in ipairs(modules) do
                package.loaded[module] = nil
            end
        end
    end
end

local function unload_auto_commands()
	local groups = vim.api.nvim_command_output("augroup")
	for i in string.gmatch(groups, "%S+") do
		vim.api.nvim_del_augroup_by_name(i)
	end
	vim.api.nvim_clear_autocmds({})
end

local function unload_keymaps()

	local keymaps = vim.api.nvim_command_output("map")

	if keymaps:match("^.*No mapping found.*") then
		return
	end

	for keymap in keymaps:gmatch("[^\r\n]+") do

		if not keymap:match("^.+Nvim builtin") then

			local keymap_table = {}

			for i in string.gmatch(keymap, "%S+") do
				table.insert(keymap_table, i)
			end

			vim.keymap.del(keymap_table[1], keymap_table[2])

		end

	end

end

local function unload_user_commands()

	local commands = vim.api.nvim_get_commands({})

	for name in pairs(commands) do
		vim.api.nvim_del_user_command(name)
	end

end

local function source_all()
    if vim.fn.exists(':LspStop') ~= 0 then
        vim.cmd('LspStop')
    end

	local impatient = _G.__luacache
	if type(impatient) == "table" and type(impatient.clear_cache) == "function" then
		impatient.clear_cache()
	end

    vim.cmd('highlight clear')

    unload_modules()

	-- unload_keymaps()

	-- unload_auto_commands()

	-- unload_user_commands()

    reload_runtime_files()

	if string.match(vim.env.MYVIMRC, '%.lua$') then
		vim.cmd('luafile ' .. vim.env.MYVIMRC)
	else
		vim.cmd('source ' .. vim.env.MYVIMRC)
	end

end

function M.reload(opts)

	resync = opts.resync or false

	source_all()

	if resync == true then
		vim.cmd("PackerSync")
	else
		vim.cmd("PackerCompile")
	end

	vim.cmd('doautocmd VimEnter')

end

return M