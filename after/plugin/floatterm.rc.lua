local status, ft = pcall(require, "FTerm")
if (not status) then return end

vim.keymap.set('n', '~', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '~', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

