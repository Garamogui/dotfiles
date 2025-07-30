return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Setup LSP for different languages

      local lspconfig = require("lspconfig")
      -- TypeScript
      --			lspconfig.tsserver.setup({
      --				capabilities = capabilities,
      --			})
      -- Python
      lspconfig.pylsp.setup({
        capabilities = capabilities,
      })
      -- HTML
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- Tailwind
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      -- C/C++
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
      })

      -- Only set up Obsidian LSP once a Markdown buffer in a vault is opened:
      -- Now this will work, because obsidian.nvim is already loaded

      -- lspconfig.obsidian.setup(p{
      --   capabilities = capabilities,
      --   workspaces   = {
      --     { name = "personal", path = vim.fn.expand "~/Documents/general-obsidian-vault" },
      --     { name = "work",     path = vim.fn.expand "~/vaults/work"               },
      --   },
      -- })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      ------------- MAPS FOR LSP -------------
      -- Map <leader>gd to go to definition
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      -- Map <leader>gr to go to references
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      -- Map <leader>ca to go to code actions
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
