local keymap = vim.keymap

-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'vs', ':vsplit<Return><C-w>w')

-- resize window
keymap.set('n', '<C-left>', '<C-w><')
keymap.set('n', '<C-right>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- open telescope file browswer
keymap.set('n', '<C-b>', ':Telescope file_browser<Return>')
