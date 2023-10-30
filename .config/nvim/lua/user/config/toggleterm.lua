local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup {
    size = 15,
    hide_numbers = true,        -- hide the number column in toggleterm buffers
    autochdir = true,           -- when neovim changes it current directory the terminal will change it's own when next it's opened
    start_in_insert = true,
    persist_mode = true,        -- if set to true (default) the previous terminal mode will be remembered
    close_on_exit = true,       -- close the terminal window when the process exits
    direction = 'horizontal',
    auto_scroll = true,         -- automatically scroll to the bottom on terminal output
}

vim.cmd [[

    autocmd TermEnter term://*toggleterm#*
          \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

    nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
    inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

]]

vim.api.nvim_set_keymap("t", "<ESC>", "<cmd>close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<C-t>", "<cmd>close<CR>", {noremap = true, silent = true})