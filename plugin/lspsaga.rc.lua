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

    -- note: <C-f> and <C-b> lets you scroll inside a floating window
    -- like when you are in hover_doc
}


local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-k>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<F12>', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set({'n', 'v'}, '<leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)

