return {
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
}
