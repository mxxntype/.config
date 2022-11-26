local configs = require'nvim-treesitter.configs'

configs.setup {
  ensure_installed = { 'lua', 'python', 'c_sharp', 'go', 'bash' },
  highlight = {
    enable = true,
  }
}
