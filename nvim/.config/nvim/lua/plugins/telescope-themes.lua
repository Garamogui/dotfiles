return {
  'andrew-george/telescope-themes',
  lazy = false,
  config = function()
    vim.o.background = 'dark' -- Ensure dark background is used
    require('telescope').setup {
        defaults = {
            preview = {
                theme = 'dark', -- Use dark theme for previews
            },
        },
    }
    require('telescope').load_extension('themes')
  end
}
