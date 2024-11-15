-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua
local s = require("luasnip").snippet
-- Abbreviations used in this article and the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
 -- A snippet that expands the trigger "hi" into the string "Hello, world!".
 require("luasnip").snippet(
  { -- Table 1: snippet parameters
   trig = "hi",
   dscr = "An autotriggering snippet that expands 'hi' into 'Hello, world!'",
   regTrig = false,
   priority = 100,
   snippetType = "autosnippet"
  },
  {                    -- Table 2: snippet nodes (don't worry about this for now---we'll cover nodes shortly)
   t("Hello, world!"), -- A single text node
  }
 -- Table 3, the advanced snippet options, is left blank.
 ),

 -- To return multiple snippets, use one `return` statement per snippet file
 -- and return a table of Lua snippets.
 require("luasnip").snippet(
  {
   trig = "foo",
  },
  { t("Another snippet.") }
 ),
}
