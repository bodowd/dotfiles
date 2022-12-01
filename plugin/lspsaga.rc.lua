local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
    server_filetype_map = {
        --typescript = 'typescript'
    },
    code_action_icon = "",
    finder_action_keys = {
        open = 'o',
        vsplit = '<CR>',
        split = 'i',
        tabe = 't',
        quit = { 'q', '<ESC>' },
    },
}


local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<F12>', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'pd', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'rn', '<Cmd>Lspsaga rename<CR>', opts)
