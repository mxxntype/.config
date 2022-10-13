local configs = require'nvim-treesitter.configs'

configs.setup {
  ensure_installed = { 'lua', 'python', 'c_sharp' },
  highlight = {
    enable = true,
  }
}
