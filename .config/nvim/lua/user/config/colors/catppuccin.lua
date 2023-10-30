local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
    return
end

-- latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = "mocha"

catppuccin.setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = false,
	term_colors = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	custom_highlights = {},
})