local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
local opts = {buffer = bufnr, remap=false}
    vim.keymap.set("n", "rn", function() vim.lsp.buf.rename() end, opts)
end
)

-- when renaming across files, it will open it in buffers. Use :wa to save across all buffers
-- %bd|e# will close the open buffers where the renamed files are
vim.api.nvim_create_user_command('Wa', 'wa|%bd|e#', { nargs = 0 })

lsp.setup()
