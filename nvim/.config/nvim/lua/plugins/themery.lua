return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          { name = "tokyonight", module = "tokyonight", colorscheme = "tokyonight" },
          { name = "pywal", module = "pywal", colorscheme = "pywal" },
          { name = "pywal16", module = "pywal16", colorscheme = "pywal16" },
          { name = "catppuccin", module = "catppuccin", colorscheme = "catppuccin" },
          { name = "onedark", module = "onedark", colorscheme = "onedark" },
          { name = "gruvbox", module = "gruvbox", colorscheme = "gruvbox" },
        },
        theme_config = {
          gruvbox = {
            setup = function()
              require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                  strings = true,
                  emphasis = true,
                  comments = true,
                  operators = false,
                  folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = true,
              })
            end,
          },
          catppuccin = {
            setup = function()
              require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                integrations = {
                  cmp = true,
                  gitsigns = true,
                  nvimtree = true,
                  treesitter = true,
                },
              })
            end,
          },
        },
      })
    end
}
