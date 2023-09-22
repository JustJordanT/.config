lvim.plugins = {
  {
    'JustJordanT/tf.nvim',
  --  require('tf').setup()
  },
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
     keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<C-s>"] = "actions.select_vsplit",
    ["<C-h>"] = "actions.select_split",
    ["<C-t>"] = "actions.select_tab",
    ["<C-p>"] = "actions.preview",
    ["<C-c>"] = "actions.close",
    ["<C-l>"] = false,
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["`"] = "actions.cd",
    ["~"] = "actions.tcd",
    ["gs"] = "actions.change_sort",
    ["g."] = "actions.toggle_hidden",
  },
  },
  {
    'ggandor/leap.nvim',
    require('leap').add_default_mappings()
  },
  {
    -- https://github.com/mbbill/undotree
    'mbbill/undotree'
  },
  {
    -- https://github.com/ThePrimeagen/refactoring.nvim
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
  { "folke/neodev.nvim", opts = {} },
  {
    "johmsalas/text-case.nvim",
    config = function()
      require('textcase').setup {}
  end
  },

-- Go plugins
 --  {
	-- 	'edolphin-ydf/goimpl.nvim',
	-- 	requires = {
	-- 		{'nvim-lua/plenary.nvim'},
	-- 		{'nvim-lua/popup.nvim'},
	-- 		{'nvim-telescope/telescope.nvim'},
	-- 		{'nvim-treesitter/nvim-treesitter'},
	-- 	},
	-- 	config = function()
	-- 		require'telescope'.load_extension'goimpl'
	-- 	end,
	-- },
  {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  }
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
