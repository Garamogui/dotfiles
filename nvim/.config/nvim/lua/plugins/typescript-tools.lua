return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  -- {
  --   "jose-elias-alvarez/typescript.nvim",
  --   config = function()
  --     require("typescript").setup({
  --       disable_commands = false,  -- prevent the plugin from creating Vim commands
  --       debug = false,             -- enable debug logging for commands
  --       go_to_source_definition = {
  --         fallback = true,          -- fall back to standard LSP definition on failure
  --       },
  --       server = {                 -- pass options to lspconfig's setup method
  --         on_attach = function(client, bufnr)
  --           -- Your on_attach function here
  --         end,
  --       },
  --     })
  --   end,
  -- },
}
