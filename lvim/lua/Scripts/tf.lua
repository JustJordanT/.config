local M = {}

M.commands = {
  TerraformFmt = function()
    -- Format the current Terraform file.
    vim.cmd('!terraform fmt')
  end,
  TerraformFmtOnSave = function()
    -- Format the current Terraform file on save.
    vim.api.nvim_exec([[
      autocmd BufWritePre *.tf !terraform fmt
    ]], false)
  end,
}

M.keymaps = {
  ['n <leader>tf'] = ':TerraformFmt<CR>',
}

return M
