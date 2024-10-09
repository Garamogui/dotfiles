vim.g.mapleader = " "
local map = vim.keymap.set

-------------- Editor -----------------
map("n", "<leader>so", ":w<CR>:so<CR>", { desc = "Save and source file." })

--map("n", "<leader>po", ":Ex<CR>")

--Spliting buffers
map("n", "<leader>hs", ":split<CR>", { desc = "" })
map("n", "<leader>vs", ":vsplit<CR>")

map("n", "<leader>ss", ":w<CR>")
map("n", "<leader>hl", ":nohlsearch<CR>")

--- Increase and decrease width of the window


-- esc clears highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

-- Ctrl+C to copy whole file.
map("n", "<C-s>", "<cmd>w<CR>", { desc = "General Save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General Copy whole file" })



------- Moves Items in visual mode  ---------
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

------- Joining lines makes the cursor stay where it was ---------
map("n", "J", "mzJ`z")

------- Moves maintaining the cursor in the middle of the screen ---------
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('x', '<leader>p', "\"_dp")

------- Clipboard ---------
map('n', '<leader>y', "\"+y", {desc = "Saves to clipboard"})
map('v', '<leader>y', "\"+y", {desc = "Saves to clipboard (visual mode)"})
map('n', '<leader>Y', "\"+Y", {desc = "Saves current line to clipboard"})
map('n', '<leader>p', "\"+p", {desc = "Pastes from clipboard"})
map('n', '<leader>P', "\"+P", {desc = "Pastes back from clipboard"})

------- Telescope Remaps ---------
-- local builtin = require("telescope.builtin")
--map("n", "<C-p>", builtin.find_files, {})
---- map("n", "<leader>fg", builtin.live_grep, {})
--map("n", "<leader>fb", builtin.buffers, {})
--map("n", "<leader>fh", builtin.help_tags, {})
------- Telescope Remaps ---------
---- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
-- map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map( "n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "telescope find all files" })

------- Neotree ---------
map('n', '<leader>po', ':Neotree source=filesystem reveal=true position=left <CR>')

------- Copilot ---------
map('n', '<leader>cd', ':Copilot disable<CR>')
map('n', '<leader>ce', ':Copilot enable<CR>')


------- Terminal --------
-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
