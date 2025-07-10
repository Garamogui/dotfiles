-- All theme plugins in a single list for proper plugin manager usage
return {
  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        lualine = {
          transparent = true
        }
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  -- Pywal Nvim
  {
    'AlphaTechnolog/pywal.nvim',
    config = function()
      require("pywal").setup({
        transparent = true,
        lualine = {
          transparent = true
        }
      })
      vim.cmd.colorscheme("pywal")
    end,
  },
  -- Pywal16 Nvim
  {
    'uZer/pywal16.nvim',
    config = function()
      require("pywal16").setup({
        transparent = true,
        lualine = {
          transparent = true
        }
      })
      vim.cmd.colorscheme("pywal16")
    end,
  },
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- enables setting the background color
        show_end_of_buffer = false, -- hides the '~' characters after the end of buffers
        term_colors = true, -- keeps terminal colors enabled
        dim_inactive = {
          enabled = false, -- keeps the background color of inactive windows unchanged
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- allows italic text
        no_bold = false, -- allows bold text
        no_underline = false, -- allows underlined text
        styles = {
          comments = { "italic" },
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- OneDark
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'deep',               -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true,           -- Show/hide background
        term_colors = true,           -- Change terminal color as per the selected theme style
        ending_tildes = false,        -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
        toggle_style_key = nil,                                                              -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
        code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
        },
        lualine = {
          transparent = false, -- lualine center bar transparency
        },
        colors = {},     -- Override default colors
        highlights = {}, -- Override highlight groups
        diagnostics = {
          darker = true,     -- darker colors for diagnostic
          undercurl = true,  -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      }
      require('onedark').load()
    end
  },
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
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
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "",  -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true, -- enable transparent background
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
