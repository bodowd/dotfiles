local status, cmp = pcall(require, "cmp")
if (not status) then return end

--local lspkind = require 'lspkind'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
        ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
        ['<C-c>'] = cmp.mapping(cmp.mapping.abort()),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
        }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }),
    --formatting = {
    --   format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
    --}
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
