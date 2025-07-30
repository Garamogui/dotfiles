vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.incsearch =  true
vim.opt.scrolloff = 5

-- Obsidian conceallevel
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.conceallevel = 2
    vim.opt.concealcursor = "nc" -- optional: hide conceals in insert mode
  end,
})
