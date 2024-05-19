return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

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
  {
    "Pocco81/TrueZen.nvim",
    lazy = false,
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "Git",
    },
    config = function()
      --#region
    end,
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
    "napmn/react-extract.nvim",
  },
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup()
    end,
  },
}
