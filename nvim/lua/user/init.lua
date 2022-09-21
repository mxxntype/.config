return {
  colorscheme = "catppuccin",

  plugins = {
    init = {
      {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
          vim.g.catppuccin_flavour = "mocha"
          require("catppuccin").setup {}
          vim.cmd [[colorscheme catppuccin]]
        end,
      },
    },
  },
}
