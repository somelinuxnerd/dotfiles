local ui = require("user.utils.ui")
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local bootstrap_required = fn.empty(fn.glob(install_path)) > 0

-- If packer is not installed then install it
if bootstrap_required then

	vim.cmd.colorscheme("fallback")

	if fn.executable("git") == 0 then
		ui.prompt_enter("Install git on your system to download plugins. Press enter to continue.")
		return
	end

	vim.notify("Installing packer..", "info")

	fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })

	vim.cmd("packadd packer.nvim")

end

-- Attempt to load packer
local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	vim.notify("Failed to initialize packer (user/core/plugin_loader.lua)", "error")
	return
end

-- Define packer initialization options
local init_options = {
	autoremove = false,
	git = {
		clone_timeout = 300
	},
	display = {
		compact = true,
		prompt_border = "rounded",
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end
	}
}

-- If running in headless mode then adjust init_options for non-interactive use
if ui.is_headless then
	init_options = vim.tbl_extend('force', init_options, { autoremove = true, display = { non_interactive = true } })
end

-- Initialize packer
packer.init(init_options)

-- If packer is being bootstrapped and neovim is not running
-- in headless mode then create a one time autocommand to
-- set the colorscheme when packer has completed syncing.
if bootstrap_required and not ui.is_headless then

	local packer_group = vim.api.nvim_create_augroup("Matt_Packer", { clear = true })

	vim.api.nvim_create_autocmd(
		"User",
		{
			group = packer_group,
			once = true,
			pattern = "PackerComplete",
			desc = "Attempt to set colorscheme when packer bootstrapping completes",
			callback = function()
				vim.schedule(function()
					package.loaded["user.core.colorscheme"] = nil
					require("user.core.colorscheme")
				end)
			end,
		}
	)

end

-- Load and configure plugins
packer.startup(function(use)

	-- Load these core plugins by default
	use "wbthomason/packer.nvim"		-- Packer plugin manager
	use "nvim-lua/plenary.nvim"			-- Useful lua functions used by many plugins
	use "nvim-lua/popup.nvim"			-- An implementation of the Popup API from vim in Neovim
	use "lewis6991/impatient.nvim"		-- Speed up load times by caching plugins
	use "folke/lua-dev.nvim"			-- Neovim developer completions and documentation

	-- Load the plugins from the plugins.lua file
	local plugins_ok, plugins = pcall(require, "user.plugins.table")
	if plugins_ok then
		for _, plugin in ipairs(plugins) do
			use(plugin)
		end
	end

	-- If packer is being bootstapped then run PackerSync
	if bootstrap_required then
		packer.sync()
	end

end)

if not bootstrap_required and not ui.is_headless then
	package.loaded["user.core.colorscheme"] = nil
	require("user.core.colorscheme")
end