vim.cmd('set expandtab')
vim.cmd('set tabstop=1')
vim.cmd('set softtabstop=1')
vim.cmd('set shiftwidth=1')
vim.g.mapleader = " "

require('garamog.set')

---------- Lazy - Package Manager ------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup('plugins')

require('garamog.remaps')
