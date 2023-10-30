-- --------------------------------
--  Create auto commands
-- --------------------------------

local augroup = vim.api.nvim_create_augroup("USER", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

local fs = require("user.utils.fs")

-- Close command window immediately if opened
autocmd(
	{ "CmdWinEnter" },
	{
		group = augroup,
		command = "quit",
		desc = "Close command window immediately if opened"
	}
)

-- Move cursor to previous position when entering a buffer
autocmd(
    { "BufReadPost" },
    {
		group = augroup,
		callback = function ()
			vim.cmd [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]]
            vim.fn.timer_start(0, function()
				vim.cmd("normal! zz")
            end)
		end,
        desc = "Move cursor to previous position when entering a buffer"
    }
)

-- Activate cursorline when entering a buffer
autocmd(
    { "InsertLeave", "WinEnter" },
    {
		group = augroup,
        command = "set cursorline",
        desc = "Activate cursorline when entering a buffer"
    }
)

-- Deactivate cursorline when leaving a buffer
autocmd(
    { "InsertEnter", "WinLeave" },
    {
		group = augroup,
        command = "set nocursorline",
        desc = "Deactivate cursorline when leaving a buffer"
    }
)

-- Highlight text when being yanked
autocmd(
    { "TextYankPost" },
    {
		group = augroup,
        callback = function()
			vim.highlight.on_yank({ timeout = 120 })
		end,
        desc = "Highlight text when being yanked"
    }
)

-- Clear command line after seven seconds
autocmd(
    { "CmdlineLeave" },
    {
		group = augroup,
        callback = function()
            vim.fn.timer_start(7000, function()
                if vim.fn.mode() == 'n' then
					vim.api.nvim_feedkeys(':', 'nx', false)
                end
            end)
        end,
        desc = "Clear command line after seven seconds"
    }
)

-- Trim trailing whitespace when saving a file
autocmd(
    { "BufWritePre" },
    {
		group = augroup,
        command = "TrimTrailingWhitespace",
        desc = "Trim trailing whitespace before saving the buffer to a file"
    }
)

-- Expand buffer to maximum size and set exit keymaps for help pages
autocmd(
    { "FileType" },
    {
		group = augroup,
        pattern = { "help" },
        callback = function()
            vim.cmd.resize()
            vim.keymap.set("n", "q", "<cmd>:quit<CR>", { silent = true, buffer = true })
            vim.keymap.set("n", "<ESC>", "<cmd>:quit<CR>", { silent = true, buffer = true })
        end,
        desc = "Expand buffer to maximum size and set exit keymaps for help pages"
    }
)

autocmd(
	{ "BufWritePre" },
	{
		group = augroup,
		callback = function()
			local dest_dir = vim.fn.expand("%:h")
			if not fs.isdir(dest_dir) then
				vim.fn.mkdir(dest_dir, 'p')
			end
		end,
	}
)

autocmd(
    { "BufWritePost" },
    {
		group = augroup,
		pattern = "*/.config/nvim/lua/user/*",
		callback = function()

			if vim.bo.filetype ~= "lua" or vim.bo.modified == false then
				return
			end

			local file_path = vim.fn.expand("%:p")
			local pkg_path = file_path:gsub("^.*/%.config/nvim/lua/", "")

			if pkg_path == "user/core/plugins.lua" then
				require("user.utils.config").reload { resync = true }
			else
				require("user.utils.config").reload { resync = false }
			end

		end
	}
)

autocmd(
	{ "BufEnter" },
	{
		nested = true,
		callback = function()
	  		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
				vim.cmd "quit"
	  		end
		end
  	}
)