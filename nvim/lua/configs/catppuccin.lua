require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = { "bold" },
        strings = { "italic" },
        variables = {},
        numbers = {},
        booleans = {},
        properties = { "bold" },
        types = { "bold" },
        operators = { "bold" },
    },
    -- color_overrides = {
    --   mocha = {
    --     base = "#181825",
    --   }
    -- },
    custom_highlights = function(colors)
      return {
        String = { fg = colors.flamingo },

        Boolean = { fg = colors.maroon },
        Number = { fg = colors.maroon },
        Float = { fg = colors.maroon },
        Constant = { fg = colors.maroon },

        Type = { fg = colors.green },
        Structure = { fg = colors.green },
        StorageClass = { fg = colors.green },
        ["@type.builtin"] = { fg = colors.green },

        Keyword = { fg = colors.red },
        Include = { fg = colors.red },

        Function = { fg = colors.mauve },
        ["@method"] = { fg = colors.mauve },

        ["@variable"] = { fg = colors.lavender },
        IndentBlanklineContextChar = { fg = colors.red },
        IndentBlanklineContextStart = { fg = colors.red, style = { NONE } },
      }
    end,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
