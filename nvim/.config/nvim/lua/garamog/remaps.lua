local map = vim.keymap.set

-------------- Editor -----------------
map("n", "<leader>so", ":w<CR>:so<CR>", { desc = "󰸧 Save and source file." })

--map("n", "<leader>po", ":Ex<CR>")

--Splitting buffers
map("n", "<leader>hs", ":split<CR>", { desc = "󰤻 Split window horizontally" })
map("n", "<leader>vs", ":vsplit<CR>", { desc = "󰤼 Split window vertically" })

map("n", "<leader>ss", ":w<CR>", { desc = "勒 Save file" })
map("n", "<leader>hl", ":nohlsearch<CR>", { desc = " Clear search highlight" })

--- Increase and decrease width of the window
-- Add mappings here if needed

-- esc clears highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = " General clear highlights" })

-- Ctrl+C to copy whole file.
map("n", "<C-s>", "<cmd>w<CR>", { desc = " General save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = " Copy whole file to clipboard" })


------- Moves Items in visual mode  ---------
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "↧ Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "↥ Move selection up" })

------- Joining lines makes the cursor stay where it was ---------
map("n", "J", "mzJ`z", { desc = "﬌ Join line below" })

------- Moves maintaining the cursor in the middle of the screen ---------
map('n', '<C-d>', '<C-d>zz', { desc = "󱦒 Scroll half-page down and center" })
map('n', '<C-u>', '<C-u>zz', { desc = "󱦒 Scroll half-page up and center" })
map('n', 'n', 'nzzzv', { desc = " Next search result centered" })
map('n', 'N', 'Nzzzv', { desc = " Previous search result centered" })
map('x', '<leader>p', '"_dp', { desc = " Paste over selection without yanking" })

-------------- Clipboard ------------------
------- Yank ---------
map('n', '<leader>y', '"+y', { desc = " Yank to system clipboard" })
map('v', '<leader>y', '"+y', { desc = " Yank visual selection to clipboard" })
map('n', '<leader>Y', 'V"+y', { desc = " Yank line to system clipboard" })
------- Cut ---------
map('n', '<leader>x', '"+x', { desc = " Cut to system clipboard" })
map('v', '<leader>x', '"+x', { desc = " Cut to system clipboard" })
map('n', '<leader>X', 'V"+x', { desc = " Cut line to system clipboard" })
------- Paste ---------
map('n', '<leader>p', '"+p', { desc = " Paste from system clipboard" })
map('n', '<leader>P', '"+P', { desc = " Paste before cursor from clipboard" })

------- Telescope Remaps ---------
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Theme Switcher" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope list buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope help tags" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "Telescope marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope old files" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope find in buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope git commits" })
map("n", "<leader>gst", "<cmd>Telescope git_status<CR>", { desc = "Telescope git status" })
map("n", "<leader>br", "<cmd>Telescope git_branches<CR>", { desc = "Telescope git branches" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope pick terminal" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "Telescope find all files" })

------- Neotree ---------
map('n', '<leader>po', ':Neotree source=filesystem reveal=true position=left <CR>', { desc = "  Neotree file explorer" })

------- Copilot ---------
map('n', '<leader>cd', ':Copilot disable<CR>', { desc = "  Disable Copilot" })
map('n', '<leader>ce', ':Copilot enable<CR>', { desc = "  Enable Copilot" })


------- tailwind sort --------
map("n", "<leader>ts", ":TailwindSort<CR>", { desc = "󱏿  Sort Tailwind classes" })
------- Terminal --------
map("t", "<C-x>", "<C-\\><C-N>", { desc = "  Exit terminal mode" })

------- LuaSnip --------
vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
" Jump backward through snippet tabstops with Shift-Tab (for example)
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

" Cycle forward through choice nodes with Control-f (for example)
imap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
smap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'

]]
