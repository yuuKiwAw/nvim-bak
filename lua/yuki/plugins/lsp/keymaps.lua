vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- split window
-- keymap.set("n", "<leader>sv", "<C-w>v")
-- keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<C-w>x", ":close<CR>")

-- tab keymap
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tw", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- window resize
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Up>", ":resize -2<CR>")

-- nvim-tree
keymap.set("n", "<leader>m", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- bufferline keymap
keymap.set("n", "<leader>h", "<cmd>BufferLineCyclePrev<cr>")
keymap.set("n", "<leader>l", "<cmd>BufferLineCycleNext<cr>")
