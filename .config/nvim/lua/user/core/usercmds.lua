-- --------------------------------
--  Create user commands
-- --------------------------------

local usercmd = vim.api.nvim_create_user_command

local api = vim.api
local fn = vim.fn
local cmd = vim.cmd

local ui = require("user.utils.ui")
local fs = require("user.utils.fs")

local prompt = {}

function prompt.save_changes()
	local status_ok, input = pcall(fn.input, "File has unsaved changes. Save? [y/N] ")
	if not status_ok then
		return nil
	end
	if string.lower(input) == "y" then
		return true
	end
	return false
end

function prompt.save_as()
	local status_ok, input = pcall(fn.input, "Save file as: ")
	if not status_ok then
		return nil
	end
	return input
end

function prompt.overwrite_file()
	local status_ok, input = pcall(fn.input, "File already exists. Overwrite? [y/N] ")
	if not status_ok then
		return nil
	end
	if string.lower(input) == "y" then
		return true
	end
	return false
end

-- Open a buffer in a new tab
usercmd("New",
	function(opts)
		local filename = opts.args
		if filename == "" then
			cmd("tabnew")
		elseif fs.exists(filename) then
			ui.print_timeout('File "' .. filename .. '" already exists')
		else
			cmd("tabnew " .. filename)
		end
	end,
    { nargs = "?" }
)

usercmd("Open",
	function(opts)
		local filename = opts.args
		if not fs.isfile(filename) then
			ui.print_timeout('File "' .. filename .. '" does not exist')
			return
		end
		cmd("tabnew " .. filename)
	end,
    { nargs = 1, complete = "file" }
)

-- Save current buffer to file. If no filename
-- exists then run the SaveAs command
usercmd("Save",
	function()

		if vim.api.nvim_buf_get_name(0) ~= "" then
			cmd("write")
			return
		end

		local status_ok, filename = prompt.save_as()
		if not status_ok then
			ui.print_timeout("Cancelled (abort)")
			return
		end

		if filename == nil or filename == "" then
			ui.print_timeout("No filename specified")
			return
		end

		if fs.isfile(filename) then

			local status_ok, overwrite = prompt.overwrite_file()
			if not status_ok then
				ui.print_timeout("Cancelled (abort)")
				return
			end

			if not overwrite or string.lower(overwrite) ~= "y" then
				ui.print_timeout("Cancelled (no overwrite)")
				return
			end

		end

		cmd("write! " .. filename)

	end,
    { nargs = 0 }
)

-- Save current buffer as filename
usercmd("SaveAs",
	function(filename)

		if filename == nil or filename == "" then
			local status_ok, filename = prompt.save_as()
			if not status_ok then
				ui.print_timeout("Cancelled (abort)")
				return
			end
		end

		if filename == nil or filename == "" then
			ui.print_timeout("No filename specified")
			return
		end

		if fs.isfile(filename) then

			local status_ok, overwrite = prompt.overwrite_file()
			if not status_ok then
				ui.print_timeout("Cancelled (abort)")
				return
			end

			if not overwrite or string.lower(overwrite) ~= "y" then
				ui.print_timeout("Cancelled (no overwrite)")
				return
			end

		end

		cmd("saveas! " .. filename)

	end,
    { nargs = "?", complete = "file" }
)

-- Rename current buffer and save to file
usercmd("Rename",
	function(new_filename)

		-- local old_filename = fn.expand("%")

		-- if fs.isfile(new_filename) then
		-- 	if not prompt.overwrite_file() then
		-- 		ui.clear_cmdline()
		-- 		return
		-- 	end
		-- end

		-- vim.cmd("saveas " .. new_filename)

		-- os.remove(old_filename)

		return

	end,
    { nargs = 1 }
)

-- Close current buffer without saving
usercmd("Close",
    "bwipeout!",
    { nargs = 0 }
)

-- Quit without saving current buffer
usercmd("Quit",
    function()

		-- If the current buffer is unmodified or readonly then quit the window
		if vim.bo.modified == false or vim.bo.readonly == true then
			cmd("quit")
			return
		end

		-- Ask the user if they want to save the buffer's unmodified changes to a file
		local save_changes = prompt.save_changes()

		-- If user cancelled the prompt then return
		if save_changes == nil then
			return
		end

		-- If user chose not to save changes then quit the window without saving and return
		if save_changes == false then
			vim.cmd("quit!")
			return
		end

		-- If the buffer has a filename then write the file, quit the window and return
		if api.nvim_buf_get_name(0) ~= "" then
			cmd("write")
			cmd("quit")
			return
		end

		-- Ask the user to enter a filename buf the buffer
		local filename = prompt.save_as()

		-- If the user interrupted the filename prompt or entered an empty filename then return
		if filename == nil or filename == "" then
			return
		end

		-- If the user entered a filename that already exists
		if fs.isfile(filename) then

			-- Ask the user if they want to overwrite the existing file
			local overwrite_file = prompt.overwrite_file()

			-- If the user interrupted the overwrite prompt then return
			if overwrite_file == nil then
				return
			end

			-- If the user chose not to overwrite the file then return
			if overwrite_file == false then
				return
			end

		end

		-- Set the filename of the buffer
		api.nvim_buf_set_name(0, filename)

		local contents = api.nvim_buf_get_lines(0, 0, -1, false)

		fs.write_file(filename, contents)

		-- Write the buffer to the file
		-- cmd("write!")

		-- Close the window
		cmd("quit!")

	end,
    { nargs = 0 }
)

-- Trim trailing whitespace from current buffer
usercmd(
    "TrimTrailingWhitespace",
    function()
		if vim.opt.modifiable and not vim.o.binary then
			local current_view = fn.winsaveview()
			cmd [[keeppatterns %s/\s\+$//e]]
			fn.winrestview(current_view)
		end
	end,
   { nargs = 0 }
)

-- Convert tabs to spaces
usercmd(
    "ConvertTabsToSpaces",
	function()
    	cmd("retab")
	end,
	{ nargs = 0 }
)

-- Reload configuration
usercmd(
    "ConfigReload",
    function()
		require("user.utils.config").reload { resync = false }
    end,
    { nargs = 0 }
)

-- Reload configuration and resync plugins
usercmd(
    "ConfigFullReload",
    function()
		require("user.utils.config").reload { resync = true }
    end,
   { nargs = 0 }
)

-- Declare user command abbreviations
cmd("cabbr new New")
cmd("cabbr w Save")
cmd("cabbr write Save")
cmd("cabbr rename Rename")
cmd("cabbr C Close")
cmd("cabbr Q Quit")
cmd("cabbr QA QuitAll")