-- --------------------------------
--  Set custom keymappings
-- --------------------------------

-- Set leader key to space
vim.g.mapleader = " "

local keymaps = {
	n = {
		["<C-q>"] 	  	= "<CMD>Quit<CR>",
		["<C-s>"] 	  	= "<CMD>Save<CR>",
		["<C-A-r>"]   	= "<CMD>ConfigReload<CR>",
		["<C-A-s>"]   	= "<CMD>ConfigFullReload<CR>",
		["<C-h>"] 	  	= ":%s//g<Left><Left>",
		["<leader>]"] 	= "<CMD>tabnext<CR>",
		["<leader>["] 	= "<CMD>tabprevious<CR>",
		["<leader>o"] 	= "o<ESC>",
		["<leader>O"] 	= "O<ESC>",
		["<A-Down>"] 	= "<CMD>move .+1<CR>",
		["<A-j>"] 		= "<CMD>move .+1<CR>",
		["<A-Up>"] 		= "<CMD>move .-2<CR>",
		["<A-k>"] 		= "<CMD>move .-2<CR>",
	},
	v = {
		["<"] 		= "<gv",
		["<Tab>"] 	= ">gv",
		[">"] 		= ">gv",
		["<S-Tab>"] = "<gv",
		["<A-Down>"] 	= "<CMD>move .+1<CR>",
		["<A-j>"] 		= "<CMD>move .+1<CR>",
		["<A-Up>"] 		= "<CMD>move .-2<CR>",
		["<A-k>"] 		= "<CMD>move .-2<CR>",
	},
	i = {
		["<A-Down>"] 	= "<CMD>move .+1<CR>",
		["<A-j>"] 		= "<CMD>move .+1<CR>",
		["<A-Up>"] 		= "<CMD>move .-2<CR>",
		["<A-k>"] 		= "<CMD>move .-2<CR>",
	}
}

for mode, modemaps in pairs(keymaps) do
	for lhs, rhs in pairs(modemaps) do
		vim.keymap.set(mode, lhs, rhs)
	end
end

-- Fix wild menu navigation
-- vim.cmd [[
--     set wildcharm=<C-Z>
--     cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
--     cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"
--     cnoremap <expr> <left> wildmenumode() ? "\<up>" : "\<left>"
--     cnoremap <expr> <right> wildmenumode() ? " \<bs>\<C-Z>" : "\<right>"
-- ]]
