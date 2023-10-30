local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local config = {
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key"
			}
		}
	},
	extensions = {
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			}
		},
		command_palette = {
			{ "File",
				{ "entire selection (C-a)", ':call feedkeys("GVgg")' },
				{ "save current file (C-s)", ':w' },
				{ "save all files (C-A-s)", ':wa' },
				{ "quit (C-q)", ':qa' },
				{ "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
				{ "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
				{ "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
				{ "files (C-f)", ":lua require('telescope.builtin').find_files()", 1 },
			},
			{ "LSP",
				{ "LSP Info", ':LspInfo' },
				{ "LSP Install", ':LspInstall' },
				{ "LSP Install Info", ':LspInstallInfo' },
				{ "LSP Install Log", ':LspInstallLog' },
				{ "LSP Log", ':LspLog' },
				{ "LSP Print Installed", ':LspPrintInstalled' },
				{ "LSP Retart", ':LspRestart' },
				{ "LSP Start", ':LspStart' },
				{ "LSP Stop", ':LspStop' },
				{ "LSP Uninstall", ':LspUninstall' },
				{ "LSP Uninstall All", ':LspUninstallAll' },
			},
			{ "Help",
				{ "tips", ":help tips" },
				{ "cheatsheet", ":help index" },
				{ "tutorial", ":help tutor" },
				{ "summary", ":help summary" },
				{ "quick reference", ":help quickref" },
				{ "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
			},
			{ "Neovim",
				{ "Reload Config", ":ReloadConfig" },
				{ "Sync and Reload Config", ":SyncReloadConfig" },
				{ 'check health', ":checkhealth" },
				{ "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
				{ "commands", ":lua require('telescope.builtin').commands()" },
				{ "command history", ":lua require('telescope.builtin').command_history()" },
				{ "registers (A-e)", ":lua require('telescope.builtin').registers()" },
				{ "Colorscheme", ":lua require('telescope.builtin').colorscheme()", 1 },
				{ "vim options", ":lua require('telescope.builtin').vim_options()" },
				{ "keymaps", ":lua require('telescope.builtin').keymaps()" },
				{ "buffers", ":Telescope buffers" },
				{ "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
				{ "paste mode", ':set paste!' },
				{ 'cursor line', ':set cursorline!' },
				{ 'cursor column', ':set cursorcolumn!' },
				{ "spell checker", ':set spell!' },
				{ "relative number", ':set relativenumber!' },
				{ "search highlighting (F12)", ':set hlsearch!' },
			}
		}
	}
}

telescope.setup(config)

telescope.load_extension('command_palette')

vim.keymap.set("n", "<leader>h", "<CMD>Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>o", "<CMD>Telescope find_files<CR>")