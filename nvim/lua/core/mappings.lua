--[[----------------------]]--
--     general mappings     --
--[[----------------------]]--

local map = vim.keymap.set
-- local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }

-- leader key
map('', '<space>', '<nop>', {})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '



--[[ NORMAL MODE ]]--

-- save file
map('n', '<leader>w', ':w<cr>')
-- sync plugins
map('n', '<leader>u', ':PackerSync<cr>')

-- comments
map("n", "<leader>/", ":CommentToggle<cr>", {}) -- Comment One Line
map("x", "<leader>/", ":'<,'>CommentToggle<cr>", {}) -- Comment Multiple Lines In Visual Mode



--[[ INSERT MODE ]]--

-- based navigation
map('i', '<C-h>', '<left>')
map('i', '<C-j>', '<down>')
map('i', '<C-k>', '<up>')
map('i', '<C-l>', '<right>')
-- fuck arrow keys ye
map('i', '<left>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<up>', '<nop>')
map('i', '<right>', '<nop>')
