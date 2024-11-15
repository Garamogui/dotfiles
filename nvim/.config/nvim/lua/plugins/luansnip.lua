return {
	"L3MON4D3/LuaSnip",
 dependencies = { "rafamadriz/friendly-snippets" },
	-- follow latest release.
	tag = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp";

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})
}

