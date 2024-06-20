return {
  "folke/neodev.nvim",
  "rcarriga/nvim-notify",
  "MunifTanjim/nui.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "shaunsingh/nord.nvim",
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  'echasnovski/mini.pairs', version = false,
  "williamboman/mason.nvim",
  "nvim-lua/plenary.nvim",
  'nvim-telescope/telescope.nvim', tag = '0.1.6', event = "VeryLazy",
  dependencies = { 'nvim-lua/plenary.nvim' },
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  "neovim/nvim-lspconfig",
   config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
   end,
      'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    event="VeryLazy",
    config = function ()
        require'alpha'.setup(require'alpha.themes.theta'.config)
    end,
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
}
