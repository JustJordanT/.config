
function TabNext()
  vim.cmd('tabnext')
end

function TabPrevious()
  vim.cmd('tabprevious')
end


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-s>', ":tabnext<CR>", { noremap  = true})
vim.keymap.set("n", '<C-a>', ":tabprevious<CR>", { noremap = true })
vim.keymap.set("n", '<C-d>', ":tabclose<CR>", { noremap = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Makes file +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- Define the mapping
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })

-- Explanation:
-- 'insert' specifies that the mapping should work only in insert mode.
-- 'jj' is the key sequence to trigger the mapping.
-- '<Esc>' is the action to be performed, in this case, pressing the Escape key.
-- { noremap = true } prevents any further mappings from being triggered by this mapping.
