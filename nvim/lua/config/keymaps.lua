-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- jj to  escape
vim.keymap.set("i", "jj", "<ESC>", { noremap = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Duplicate current line
vim.keymap.set("n", "<leader>d", "yyp")

-- Commneting out lines
vim.keymap.set("n", "<leader>c", ":CommentToggle<CR>")

-- Close current bufferline
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- Selec all
vim.keymap.set("n", "<leader>a", "ggVG")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Split windows
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Close window
keymap.set("n", "qq", ":BufferLinePickClose<CR>", opts)

-- Oil Keymaps
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
