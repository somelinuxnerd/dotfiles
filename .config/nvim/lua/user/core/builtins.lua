-- --------------------------------
--  Disable unused builtin plugins
-- --------------------------------

-- Declare an array of builtin plugins to disable
local builtins = {
	'2html_plugin',
	'getscript',
	'getscriptPlugin',
	'gzip',
	'logipat',
	'matchit',
	'matchparen',
	'netrw',
	'netrwPlugin',
	'netrwFileHandlers',
	'netrwSettings',
	'rplugin',
	'rrhelper',
	'spellfile_plugin',
	'tar',
	'tarPlugin',
	'tutor_mode_plugin',
	'vimball',
	'vimballPlugin',
	'zip',
	'zipPlugin',
}

-- Disable builtin plugins
for _, value in ipairs(builtins) do
	vim.g['loaded_' .. value] = 1
end