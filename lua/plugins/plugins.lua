return {
  "folke/neodev.nvim",
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
      "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
