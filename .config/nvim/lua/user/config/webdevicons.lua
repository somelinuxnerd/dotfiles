local status_ok, web_devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
    return
end

-- Change shell related icon colors to the bash icon color
local icons = web_devicons.get_icons()

for _, name in ipairs({ 'awk', 'csh', 'ksh', 'fish', 'sh' }) do
	icons[name].color = icons['bash'].color
	icons[name].cterm_color = icons['bash'].cterm_color
end

web_devicons.setup({
	default = true
})

-- Set default icon
web_devicons.set_default_icon('', '#DAD8D8')