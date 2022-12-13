local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
    server_filetype_map = {
        --typescript = 'typescript'
    },
    code_action_icon = "",
    finder_action_keys = {
        open = '<CR>',
        vsplit = '<C-v>',
        split = '<C-s>',
        tabe = '<C-t>',
        quit = { 'q', '<ESC>' },
    },
}


local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<F12>', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'rn', '<Cmd>Lspsaga rename<CR>', opts)
-- when renaming across files, it will open it in buffers. Use :wa to save across all buffers
-- %bd|e# will close the open buffers where the renamed files are
vim.api.nvim_create_user_command('Wa', 'wa|%bd|e#', { nargs = 0 })

-- vim.keymap.set('n', '~', '<Cmd>Lspsaga open_floaterm<CR>', opts)
-- vim.keymap.set('t', '~', '<Cmd>Lspsaga close_floaterm<CR>', opts)
