-- To disable completions
-- lua require('cmp').setup.buffer { enabled = false }

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
        -- ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
        -- ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
        ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { "i" }),
        ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { "i" }),
    }),
    sources = {
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 4 },
    },
    completion = {
        keyword_length = 1,
        completeopt = "menu,menuone,noselect"
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = ({
                nvim_lua = "[api]",
                nvim_lsp = "[LSP]",
                path = "[path]",
                buffer = "[buf]",
            }),
        }),
    },
})

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "c" }),
        ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "c" }),
        ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { "c" }),
        ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { "c" }),
    }),
    sources = {
        { name = 'cmdline' }
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = ({
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                path = "[Path]",
                buffer = "[Buffer]",
            }),
        }),
    },
})

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "c" }),
        ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "c" }),
        ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { "c" }),
        ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { "c" }),
    }),
    sources = {
        { name = 'buffer' }
    }
})


-- local config = {
--     window = {
--         completion = cmp.config.window.bordered(),
--         documentation = cmp.config.window.bordered(),
--     },
--     mapping = cmp.mapping.preset.insert({
--         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<C-e>'] = cmp.mapping.abort(),
--         ['<CR>'] = cmp.mapping.confirm({ select = true }),
--         ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
--         ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
--         ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { "i" }),
--         ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { "i" }),
--     }),
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'nvim_lua' },
--         { name = 'path' },


--     }, {
--         { name = 'buffer' },
--     })
-- }

-- cmp.setup(config)

-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['pyright'].setup {
    capabilities = capabilities
}
