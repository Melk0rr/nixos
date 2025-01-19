-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], {})
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], {})
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], {})
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], {})

-- Buffer navigation
vim.keymap.set('n', '<Tab>', '<cmd>bnext<cr>', {})
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<cr>', {})

-- Move lines
vim.keymap.set('n', '<A-j>', ':m .+1<cr>==')
vim.keymap.set('n', '<A-k>', ':m .-2<cr>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv")

-- Plugin-specific
local telescope = require 'telescope.builtin'
--local nvim_tree = require 'nvim-tree.api'

vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
--vim.keymap.set('n', '<leader>th', telescope.colorscheme, {})
--vim.keymap.set('n', '<leader>e', nvim_tree.tree.toggle, {})
