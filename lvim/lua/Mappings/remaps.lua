-- Mappings
lvim.lsp.buffer_mappings.insert_mode['C-c'] = { "<ESC>"}


vim.api.nvim_set_keymap('n', '<C-j>', [[:lua funcs.Move_line_down()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', [[:lua Move_line_up()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-j>', [[:lua Duplicate_line_down()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<S-C-j>', [[:lua Duplicate_line_down()<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-w>', [[:BufferKill <CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', [[:BufferLineCycleNext <CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', [[:BufferLineCyclePrev <CR>]], { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<F12>', [[:Telescope quickfix<CR>]], { noremap = true, silent = true })

-- UndoTree
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Textcase
vim.api.nvim_set_keymap('n', 'gaa', "<cmd>TextCaseOpenTelescopeQuickChange<CR>", { desc = "Telescope Quick Change" })
vim.api.nvim_set_keymap('n', 'gai', "<cmd>TextCaseOpenTelescopeLSPChange<CR>", { desc = "Telescope LSP Change" })


-- edolphin-ydf/goimpl.nvim
-- vim.api.nvim_set_keymap('n', '<leader>im', [[<cmd>lua require'telescope'.extensions.goimpl.goimpl{}<CR>]], {noremap=true, silent=true})



-- funcs
-- funcs
-- funcs
-- funcs
-- funcs
-- funcs
-- funcs
-- Define a function to move the current line up
function Move_line_up()
    local current_line = vim.fn.line('.')
    if current_line > 1 then
        -- Save the current line to a register
        local line_text = vim.fn.getline('.')
        vim.fn.setline(current_line, vim.fn.getline(current_line - 1))
        vim.fn.setline(current_line - 1, line_text)
        vim.cmd('nohlsearch') -- Clear search highlight
        vim.fn.cursor(current_line - 1, #line_text)
    end
end

function Move_line_down()
    local current_line = vim.fn.line('.')
    local last_line = vim.fn.line('$')
    if current_line < last_line then
        local line_text = vim.fn.getline('.')
        vim.fn.setline(current_line, vim.fn.getline(current_line + 1))
        vim.fn.setline(current_line + 1, line_text)
        vim.cmd('nohlsearch') -- Clear search highlight
        vim.fn.cursor(current_line + 1, #line_text)
    end
end

-- Define a function to duplicate the current line below
function Duplicate_line_down()
   local current_line = vim.fn.line('.')
    local last_line = vim.fn.line('$')
    local line_text = vim.fn.getline(current_line)

    if vim.fn.visualmode() == 'V' then
        -- If in visual line mode, duplicate the selected lines
        local start_line = vim.fn.line('\'<')
        local end_line = vim.fn.line('\'>')
        local selected_lines = {}
        for i = start_line, end_line do
            table.insert(selected_lines, vim.fn.getline(i))
        end
        vim.fn.append(current_line, selected_lines)
    else
        -- If in normal mode, duplicate the current line
        vim.fn.append(current_line, line_text)
    end

    -- Move the cursor to the duplicated line(s)
    if current_line < last_line then
        vim.fn.cursor(current_line + 1, 0)
    else
        vim.fn.cursor(current_line, 0)
    end
end


