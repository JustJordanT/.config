-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

    use({ 'rose-pine/neovim', as = 'rose-pine' })
    --    vim.cmd('colorscheme rose-pine')
    use('nvim-treesitter/nvim-treesitter', {run  = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use("mbbill/undotree")
    use("tpope/vim-fugitive") -- This is a git tool
    use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
     use {"nvim-tree/nvim-web-devicons"}
     use { "ellisonleao/gruvbox.nvim"} -- next greatest remap ever : asbjornHaland}-- next greatest remap ever : asbjornHaland
     use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    };
    use { "catppuccin/nvim", as = "catppuccin" }
    use('fatih/vim-go', {run = ':GoUpdateBinaries'})
    -- auto commented lines
    use({
        "winston0410/commented.nvim",
        config = function()
            require("commented").setup({
                codetags_keybindings = {
                    --  FIXME fixme = "<leader>f",
                    --  FIXME fixme_line = "<leader>ff",
                    todo = "<leader>t",
                    --  todo_line = "<leader>tt",
                    --  BUG bug = "<leader>b",
                    --  BUG bug_line = "<leader>bb",
                    --  note = "<leader>n",
                    --  note_line = "<leader>nn",
                    --  wont_fix = "<leader>w",
                    --  wont_fix_line = "<leader>ww",
                },
            })
        end,
    })
    -- GO CONFIGURATION
    use {
      "olexsmir/gopher.nvim",
      requires = { -- dependencies
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
    }
    -- https://github.com/crusj/structrue-go.nvim
    use {
        'crusj/structrue-go.nvim',
        branch = "main"
    }
    -- TABLINE 
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- https://github.com/glepnir/dashboard-nvim
    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }
    -- https://github.com/SmiteshP/nvim-navbuddy
        --  use {
        --  "SmiteshP/nvim-navbuddy",
        --  requires = {
    --  require"structrue-go".setup()
            --  "neovim/nvim-lspconfig",
            --  "SmiteshP/nvim-navic",
            --  "MunifTanjim/nui.nvim"
        --  }
    --  }
    -- diagnostics
    -- https://github.com/ray-x/lsp_signature.nvim
    use {
      "ray-x/lsp_signature.nvim",
    }
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    -- Issues hotkeys with barbar 4/8/23 icons.button = "false" not working
    --  use { "romgrk/barbar.nvim", wants = "nvim-tree/nvim-web-devicons" } -- https://github.com/romgrk/barbar.nvim
  end)
