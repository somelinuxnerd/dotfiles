-- If running inside vscode load basic settings and return
if vim.g.vscode then
	require("user.core.builtins")
	require("user.core.options")
	require("user.core.keymaps")
	return
end

local status_ok, impatient = pcall(require, "impatient")
if status_ok then
	impatient.enable_profile()
end

_G.colorscheme = "tokyonight-night"

-- Open a new tab for each filename passed as a command line argument
vim.cmd("tab all")

-- Load core config files
require("user.core.colorscheme")
require("user.core.builtins")
require("user.core.options")
require("user.core.usercmds")
require("user.core.autocmds")
require("user.core.keymaps")

-- Load and configure plugins
require("user.plugins")