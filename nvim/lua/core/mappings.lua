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

-- file explorer
map("n", "<leader>l", ":NvimTreeToggle<cr>", {})
map("n", "<leader>e", ":NvimTreeFocus<cr>", {})

-- terminal
map("n", "<A-i>", "<cmd>ToggleTerm<cr>")
map("t", "<A-i>", "<cmd>ToggleTerm<cr>")

-- twilight mode
map("n", "<leader>h", "<cmd>Twilight<cr><cmd>IndentBlanklineToggle<cr>")



--[[ INSERT MODE ]]--

-- based navigation
map('i', '<a-h>', '<left>')
map('i', '<a-j>', '<down>')
map('i', '<a-k>', '<up>')
map('i', '<a-l>', '<right>')
-- fuck arrow keys ye
map('i', '<left>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<up>', '<nop>')
map('i', '<right>', '<nop>')
