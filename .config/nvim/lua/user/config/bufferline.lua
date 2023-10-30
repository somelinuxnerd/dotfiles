local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

local config_old = {
    options = {
        mode = "tabs",
        -- separator_style = "slanted",
		separator_style = { "a", "b" },
        numbers = "none",
		color_icons = true,
        -- indicator = {
        --     icon = '▎',
        --     style = 'icon',
        -- },
        hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" }
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        custom_filter = function(buf_number, buf_numbers)

            local filetype = vim.bo[buf_number].filetype

            if filetype ~= "NvimTree" then
                return true
            elseif filetype ~= "toggleterm" then
                return true
            else
                return false
            end

        end,
    },
}

local function filter_function(buf_number, buf_numbers)

	local filetype = vim.api.nvim_buf_get_option(buf_number, "filetype")

	if filetype == "NvimTree" then
		return false
	elseif filetype == "toggleterm" then
		return false
	elseif filetype == "packer" then
		return false
	else
		return true
	end

end

local config = {
    options = {
        always_show_bufferline = false,
        color_icons = true,                         -- whether or not to add the filetype icon highlights
        custom_filter = function(buf_number, buf_numbers)
			return filter_function(buf_number, buf_numbers)
        end,
        enforce_regular_tabs = true,
        mode = "tabs",                          	-- set to "tabs" to only show tabpages instead
        numbers = "none",                       	-- "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",             -- "File Explorer" | function ,
                text_align = "center",              -- "left" | "center" | "right"
                separator = true
            }
        },
        persist_buffer_sort = true, 				-- whether or not custom sorted buffers should persist
        separator_style = { "thick" },              	-- "slant" | "thick" | "thin" | { 'any', 'any' },
        show_buffer_close_icons = false,
        show_buffer_icons = true,                   -- disable filetype icons for buffers
        show_close_icon = true,
        show_tab_indicators = true,
    }
}

bufferline.setup(config)
