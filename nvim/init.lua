--[[---------------------------------------------]]--
--         init.lua - init file of neovim          --
--              author: astrumaureus               --
--[[---------------------------------------------]]--

local core_modules = {
  'lua/core/plugins',           -- plugin manager
  'lua/core/mappings',          -- custom keymaps
  'lua/core/options',           -- general options

  'lua/configs/tree-sitter',
}

for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
