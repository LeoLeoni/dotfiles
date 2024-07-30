return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    lazy = false,
    config = function()
      require("lint").linters_by_ft = {
        kotlin = { "ktlint" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- NOTE: Re enable null-ls if the other linters are a PITA
    -- dependencies = {
    --   "jose-elias-alvarez/null-ls.nvim",
    --   config = function()
    --     require "configs.null-ls"
    --   end,
    -- },
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
        "prettierd",
        "typescript-language-server",
        "eslint_d",
        "json-lsp",
        "kotlin-language-server",
        "java-language-server",
        "ktlint",
        "rust-analyzer",
        -- "gopls",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvimtree",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "kotlin",
        "scss",
        "rust",
        "go",
        "java",
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        before = "fg",
        keyword = "fg",
      },
      search = {
        pattern = [[\b(KEYWORDS)\b]],
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      numhl = true,
    },
  },
  -- {
  --   "SmiteshP/nvim-navic",
  --   event = "CursorMoved",
  --   config = function()
  --     dofile(vim.g.base46_cache .. "navic")
  --
  --     require("nvim-navic").setup {
  --       highlight = true,
  --       lsp = { auto_attach = true },
  --     }
  --
  --     vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
  --   end,
  -- },
}
