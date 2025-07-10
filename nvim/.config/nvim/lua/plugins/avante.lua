return {
  {
    "yetone/avante.nvim",
    config = function()
      require("avante").setup({
        -- Default Copilot agent set to GPT-4.1
        provider = "copilot",
        model = "gpt-4.1",
      })
    end,
    dependencies = {
      -- load copilot.lua first
      {
        "zbirenbaum/copilot.lua",
        config = function()
          require("copilot").setup({
            panel      = { enabled = true },
            suggestion = { enabled = true },
          })
        end,
      },
    },
  },
}
