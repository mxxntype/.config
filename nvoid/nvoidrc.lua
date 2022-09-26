local M = {}
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- UI
M.ui = {
	theme = "catppuccin", -- aquarium | catppuccin | classic-dark | dracula | gruvbox | nightfox | nord | onedark | radium | solarized | tokyodark | uwu
	transparency = false,
	statusline = {
		style = "minimal", -- evil | minimal | nvoid
		enabled = true,
	},
	bufferline = {
		enabled = true,
		lazyload = true,
	},
}
-- OPT
M.options = {
	clipboard = "unnamedplus",
	cmdheight = 1,
	mouse = "a",
	mapleader = " ",
	wrap = true,
	number = true,
	relative_number = false,
	number_width = 4,
	cursor_line = true,
	expand_tab = true,
	ignore_case = true,
	smart_case = true,
	smart_indent = true,
	swap_file = false,
    undo_file = true,
	backup = false,
	show_mode = false,
}

-- MAPS
-- navigate within insert mode
map("i", "<C-h>", '<left>', opts)
map("i", "<C-j>", '<down>', opts)
map("i", "<C-k>", '<up>', opts)
map("i", "<C-l>", '<right>', opts)
-- toggle terminal
map("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>', opts)
map("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

-- Add Treesitter langs
M.ts_add = {} -- fish

-- Lsp
M.lsp = {
	add = {},
	virtual_text = true,
	document_highlight = true,
	autoforamt = false,
}

-- Plugins
M.plugins = {
	add = {},
	remove = {
		alpha = false,
		blankline = false,
		colorizer = false,
		gitsigns = false,
		nvimtree = false,
	},
	nvimtree = {
		git = true,
		indent_markers = false,
	},
}

-- Add new whichkey bind
M.whichkey_add = {}

-- Note: Visit "https://github.com/ysfgrgO7/nvoid-custom-config" For more info how the file works

return M
