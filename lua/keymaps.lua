local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save
keymap("n", "<C-s>", "<cmd>w<cr>", opts)
keymap("n", "<A-s>", "<cmd>w<cr>", opts)

-- Select all
keymap("n", "<leader>aa", "ggVG", opts)

-- Resize with arrows
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", opts)
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)

-- Close window
keymap("n", "<leader>wq", "<C-w>q", opts)
keymap("n", "<leader>zz", "ZZ", opts)
keymap("n", "<leader>zq", "ZQ", opts)

-- Window splits
keymap("n", "<leader>vv", "<C-w>v", opts)
keymap("n", "<leader>ss", "<C-w>s", opts)

-- Window navegation
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", "<cmd>bnext<cr>", opts)
keymap("n", "<S-h>", "<cmd>bprevious<cr>", opts)

-- File tree
keymap("n", "<leader>n", "<cmd>NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>df", "<cmd>Telescope file_browser<cr>", opts)
keymap("n", "<C-f>", "<cmd>Telescope file_browser<cr>", opts)
keymap("n", "<leader>gf", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>bf", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>cb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)

-- Buffer
keymap("n", "<leader>bd", "<cmd>bd<cr><S-l>", opts)
keymap("n", "<leader>bx", "<cmd>%bd<cr>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", "<cmd>m .+1<cr>==", opts)
keymap("v", "<A-k>", "<cmd>m .-2<cr>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", "<cmd>move '>+1<cr>gv-gv", opts)
keymap("x", "K", "<cmd>move '<-2<cr>gv-gv", opts)
keymap("x", "<A-j>", "<cmd>move '>+1<cr>gv-gv", opts)
keymap("x", "<A-k>", "<cmd>move '<-2<cr>gv-gv", opts)

-- Terminal
keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", opts)
keymap("n", "<leader>tl", "<cmd>ToggleTerm direction=vertical size=45<cr>", opts)
keymap("n", "<leader>tj", "<cmd>ToggleTerm direction=horizontal size=10<cr>", opts)
keymap("n", "<leader>tn", "<cmd>ToggleTerm direction=tab<cr>", opts)

keymap("t", "<C-Up>", "<cmd>resize +2<cr>", opts)
keymap("t", "<C-Down>", "<cmd>resize -2<cr>", opts)
keymap("t", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
keymap("t", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)

keymap('t', '<esc>', [[<C-\><C-n>]], opts)

-- PackerSync
keymap("n", "<leader>ps", "<cmd>PackerSync<cr>", opts)

-- Mason
keymap("n", "<leader>ms", "<cmd>Mason<cr>", opts)
