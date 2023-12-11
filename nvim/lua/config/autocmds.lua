-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Commenting Plugin
require("Comment").setup()
require("nvim-web-devicons").setup({})

-- Turn Off Paste Mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- On save GoImport if Go file
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     vim.lsp.buf.formatting_sync(nil, 1000)
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "*.go",
--   command = "silent! :GoImport",
-- })
