local status, tt = pcall(require, "toggleterm")
if (not status) then return end

tt.setup()

vim.keymap.set('n', '~', '<CMD>ToggleTerm<CR>')
vim.keymap.set('t', '~', '<CMD>ToggleTerm<CR>')
vim.keymap.set('t', '<esc>', '<C-\\><C-n>')
