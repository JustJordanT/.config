config = function()
  require('textcase').setup {}
  require('telescope').load_extension('textcase')
  vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>TextCaseOpenTelescope<CR>', { desc = "Telescope" })
  vim.api.nvim_set_keymap('v', 'ga.', "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
end
