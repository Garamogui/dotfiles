 ----------------- Tokyonight -----------------
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


--  ----------------- Pywal Nvim  Theme -----------------
-- return {
--   'AlphaTechnolog/pywal.nvim', as = 'pywal',
--    config = function()
--      require("pywal").setup({
--        transparent = true,
--        lualine = {
--          transparent = true
--        }
--      })
--      vim.cmd.colorscheme("pywal")
--    end,
-- }


-- return {
--  'uZer/pywal16.nvim', as = 'pywal16',
--     config = function()
--       require("pywal16").setup({
--         transparent = true,
--         lualine = {
--           transparent = true
--         }
--       })
--       vim.cmd.colorscheme("pywal16")
--     end,
-- }
