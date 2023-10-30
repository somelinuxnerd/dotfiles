return {

	-- Color Schemes
	{

		-- Catppuccin
		{
			"catppuccin/nvim",
			as = "catppuccin",
			config = function() require("user.config.colors.catppuccin") end,
		},

		-- Kanagawa
		{
			"rebelot/kanagawa.nvim",
			config = function() require("user.config.colors.kanagawa") end,
		},

		-- One Dark
		{
			"navarasu/onedark.nvim",
			config = function() require("user.config.colors.onedark") end,
		},

		-- Tokyo Night
		{
			"folke/tokyonight.nvim",
			config = function() require("user.config.colors.tokyonight") end,
		},

	},

	-- User Interface
	{

		-- Development Icons
		{
			"kyazdani42/nvim-web-devicons",
			config = function() require("user.config.webdevicons") end,
		},

		-- Status Line
		{
			"nvim-lualine/lualine.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function() require("user.config.lualine") end,
		},

		-- Buffer Line
		{
			"akinsho/bufferline.nvim",
			tag = "v2.*",
			requires = "kyazdani42/nvim-web-devicons",
			config = function() require("user.config.bufferline") end,
		},

		-- Notifications
		{
			"rcarriga/nvim-notify",
			config = function() require("user.config.notify") end,
		},

		-- Command Helper
		{
			"folke/which-key.nvim",
			config = function() require("user.config.whichkey") end,
		},

		-- File Explorer
		{
			"kyazdani42/nvim-tree.lua",
			requires = "kyazdani42/nvim-web-devicons",
			tag = "nightly",
			config = function() require("user.config.nvim-tree") end,
		},

		-- Fuzzy Finder
		{
			"nvim-telescope/telescope.nvim",
			tag = '0.1.0',
			requires = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons",
				"nvim-treesitter/nvim-treesitter"
			},
		},

		{
			"folke/noice.nvim",
			disable = true,
			requires = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",
			},
			config = function() require("user.config.noice") end,
		},

	},

	-- Highlighting, Formatting, Language Servers, Completions
	{

		-- Syntax Highlighting
		{
			"nvim-treesitter/nvim-treesitter",
			config = function() require("user.config.treesitter") end,
		},

		-- Code Formatter
		{
			"jose-elias-alvarez/null-ls.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function() require("user.config.null-ls") end,
		},

		-- Completions
		{
			"hrsh7th/nvim-cmp",
			requires = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/cmp-nvim-lsp-signature-help",
				"onsails/lspkind.nvim",
			},
			config = function() require("user.config.cmp") end,
		},

		{
			"williamboman/mason-lspconfig.nvim",
			requires = "williamboman/mason.nvim",
			config = function() require("user.config.mason-lspconfig") end,
		},
		{
			"williamboman/mason.nvim",
			config = function() require("user.config.mason") end,
		},
		{
			"neovim/nvim-lspconfig",
			requires = {
				"williamboman/mason.nvim",
				"williamboman/mason-lspconfig.nvim",
			},
			config = function() require("user.config.nvim-lspconfig") end,
		},

	},

}
