local keymap = vim.keymap

-- split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "vs", ":vsplit<Return><C-w>w")

-- resize window
keymap.set("n", "<C-left>", "<C-w><")
keymap.set("n", "<C-right>", "<C-w>>")
keymap.set("n", "<C-up>", "<C-w>+")
keymap.set("n", "<C-down>", "<C-w>-")

-- remap F1 to do nothing. Keep accidently hitting it
vim.cmd("nnoremap <F1> <Nop>")
vim.cmd("inoremap <F1> <Nop>")
-- make C-a do nothing. I use it for kitty and in in vim it keeps incrementing numbers and messing things up
vim.cmd("vnoremap <C-a> <Nop>")
vim.cmd("inoremap <C-a> <Nop>")
vim.cmd("nnoremap <C-a> <Nop>")

vim.cmd("nnoremap H :tabprevious<CR>")
vim.cmd("nnoremap L :tabnext<CR>")
vim.cmd("nnoremap <C-l> :bnext<CR>")
vim.cmd("nnoremap <C-h> :bprev<CR>")
vim.api.nvim_create_user_command("Bd", ":bp | sp | bn | bd", {})

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
keymap.set("x", "<leader>p", '"_dP')

-- rename the word that cursor is on in the whole file
keymap.set("n", "<leader>rn", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

keymap.set("v", "y", '"+y')

-- search in buffer for the highlighted word
-- yank, then search with /, then <C-r> " to get from the register, then <CR> for "enter" and run the search
keymap.set("v", "<leader>/", 'y/<C-r>"<CR>')

-- stay in visual mode after shift
vim.cmd("vnoremap > >gv")
vim.cmd("vnoremap < <gv")
