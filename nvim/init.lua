--[[---------------------------------------------]]--
--         init.lua - init file of neovim          --
--              author: astrumaureus               --
--[[---------------------------------------------]]--

local core_modules = {
  'core.plugins',           -- plugin manager
  'core.mappings',          -- custom keymaps
  'core.options',           -- general options

  'configs.tree-sitter',
}

for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
