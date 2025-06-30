return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = false,
      })
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
      lspconfig.emmet_language_server.setup({
        capabilities = capabilities,
      })

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

