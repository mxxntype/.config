local M = {}

M.ui = {
  theme = "catppuccin",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
