return {
 "lervag/vimtex",
 lazy = false, -- we don't want to lazy load VimTeX
 -- tag = "v2.15", -- uncomment to pin to a specific release
 init = function()

  vim.g.vimtex_compiler_latexmk = {
   build_dir = "build",
   continuous = 1,
   executable = "latexmk",
   options = {
    "-pdf",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
    "-shell-escape",
   },
  }

  vim.g.vimtex_syntax_enabled = 1
  vim.g.vimtex_indent_enabled = 1
  vim.g.vimtex_view_method = "zathura"
  vim.g.vimtex_complete_enabled = 1
  vim.g.vimtex_complete_close_braces = 1
 end
}
