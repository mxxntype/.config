--[[------------------------------]]--
--         general mappings         --
--       author: astrumaureus       --
--[[------------------------------]]--

-- Shorten function name
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- leader stuff
map('', '<space>', '<nop>', {})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map('n', '<leader>w', ':w<cr>')

-- based moving in insert mode
map('i', '<C-h>', '<left>')
map('i', '<C-j>', '<down>')
map('i', '<C-k>', '<up>')
map('i', '<C-l>', '<right>')

-- fuck arrow keys ye
map('i', '<left>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<up>', '<nop>')
map('i', '<right>', '<nop>')
