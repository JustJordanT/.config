-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- colorscheme
lvim.colorscheme = "moonfly"


lvim.plugins = {
  {
    "Pocco81/auto-save.nvim",
    config = function()
    require("auto-save").setup()
  end,
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
  "wakatime/vim-wakatime"
  },
  {
    'nvim-tree/nvim-web-devicons'
  },
  {
    'stevearc/oil.nvim',
    require('oil').setup(),
    dependencies = { "nvim-tree/nvim-web-devicons" },
    vim.api.nvim_set_keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
  },
  {
    'ggandor/leap.nvim',
 --    require('leap').add_default_mappings()
  },
}

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup() -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})


-- Mappings
lvim.lsp.buffer_mappings.insert_mode['jj'] = { "<ESC>"}
vim.api.nvim_set_keymap('n', '<C-j>', [[:lua Move_line_down()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', [[:lua Move_line_up()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-j>', [[:lua Duplicate_line_down()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<S-C-j>', [[:lua Duplicate_line_down()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', [[:BufferKill <CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', [[:BufferLineCycleNext <CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', [[:BufferLineCyclePrev <CR>]], { noremap = true, silent = true })



-- functions
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
