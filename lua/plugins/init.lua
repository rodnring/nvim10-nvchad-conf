local lazy = require "lazy"
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "biome",
        "chrome-debug-adapter",
        "bash-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "jsdoc",
        "json",
        "json5",
        "scss",
        "typescript",
        "tsx",
      },
    },
  },
  {
    "ggandor/lightspeed.nvim",
    lazy = false,
  },
  -- {
  --   "tpope/vim-fugitive",
  -- cmd = {
  --   "Git",
  -- },
  -- -- config = function()
  --   --#region
  --   end,
  -- },
  {
    "dinhhuy258/git.nvim",
    lazy = false,
    config = function()
      require("git").setup()
    end,
  },
  {
    "folke/twilight.nvim",
    lazy = false,
    opts = {},
  },
  {
    "folke/zen-mode.nvim",
    lazy = false,
    opts = {},
  },
  {
    "mattn/emmet-vim",
    lazy = false,
  },
  -- To make a plugin not be loaded
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup()
    end,
  },
}
