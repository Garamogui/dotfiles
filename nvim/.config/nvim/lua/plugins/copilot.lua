-- Disabled in favor of avante.nvim's Copilot integration
-- return {
--   "github/copilot.vim"
-- }
-- Configuration for GitHub Copilot
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 150,
        keymap = {
          accept = "<C-CR>",
          accept_word = "<C-Right>",
          accept_line = "<C-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
      },
    })
  end,
}
