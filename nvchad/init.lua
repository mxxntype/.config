-- local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
-- local g = vim.g

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- indenting
opt.expandtab = true
opt.smartindent = false
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

opt.laststatus = 3
