-- Set leader keys
vim.keymap.set('n', ',', '<Nop>')
vim.keymap.set('n', '-', '<Nop>')
vim.g.mapleader = ","
vim.g.maplocalleader = "-"

-- Navigate between tabs and splits
vim.keymap.set('n', 'H', 'gT')
vim.keymap.set('n', 'L', 'gt')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')

