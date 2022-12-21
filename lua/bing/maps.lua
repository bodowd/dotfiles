local keymap = vim.keymap

-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'vs', ':vsplit<Return><C-w>w')

-- resize window
keymap.set('n', '<C-left>', '<C-w><')
keymap.set('n', '<C-right>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- remap F1 to do nothing. Keep accidently hitting it
vim.cmd("nnoremap <F1> <Nop>")
vim.cmd("inoremap <F1> <Nop>")


vim.cmd("nnoremap <leader>1 1gt")
vim.cmd("nnoremap <leader>2 2gt")
vim.cmd("nnoremap <leader>3 3gt")
vim.cmd("nnoremap <leader>4 4gt")
vim.cmd("nnoremap H :tabprevious<CR>")
vim.cmd("nnoremap L :tabnext<CR>")

-- exit terminal editing mode to get to vim normal mode
vim.cmd("tnoremap  <Esc> <C-\\><C-n>")
-- open terminal in new tab
keymap.set('n', '~', '<Cmd>tabnew | term<CR>')
-- close terminal when in terminal mode and close the buffer
keymap.set('t', '~', '<Cmd>bd!<CR>')


-- move highlighted lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place when moving the page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching. n to search down, N to search up
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- after pasting over a word, keep the originally copied word in the clipboard
keymap.set("x", "<leader>p", "\"_dP")

-- rename the word that cursor is on in the whole file
keymap.set("n", "<leader>rn", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

