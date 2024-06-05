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
        "astro-language-server",
        "rust-analyzer",
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
        "astro",
        "rust",
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
    lazy = false,
    config = function()
      require("colorizer").setup {
        user_default_options = {
          tailwind = true,
          sass = { enable = true, parsers = { "css" } },
        },
      }
    end,
  },
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- Optional
      {
        "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
        opts = {},
      },
    },
    config = true,
  },
}
