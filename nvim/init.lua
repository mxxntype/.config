--[[-------------------------------------]]--
--     init.lua - init file of neovim      --
--[[-------------------------------------]]--

local core_modules = {
  'core.plugins',           -- plugin manager
  'core.options',           -- general options
  'core.mappings',          -- custom keymaps

  'configs.tree-sitter',    -- syntax highlighter
  'configs.coq',            -- based as FUCK autocomplete engine
  'configs.lsp',            -- mason + lspconfig
  'configs.colorizer',      -- colorizer lol
  'configs.comment',        -- comment engine
}

for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
