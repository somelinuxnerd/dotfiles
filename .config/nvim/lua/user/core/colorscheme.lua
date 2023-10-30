-- --------------------------------
--  Set the colorscheme
-- --------------------------------

if _G.colorscheme == nil then
	pcall(vim.cmd.colorscheme, "fallback")
	return
end

local status_ok, _ = pcall(vim.cmd.colorscheme, _G.colorscheme)
if not status_ok then
	pcall(vim.cmd.colorscheme, "fallback")
end