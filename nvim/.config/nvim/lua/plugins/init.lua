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
        typescript = { "eslint" },
        typescriptreact = { "eslint" },
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
    'mrcjkb/rustaceanvim',
    lazy = false, -- This plugin is already lazy
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
        "c",
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      dofile(vim.g.base46_cache .. "todo")
      require("todo-comments").setup {
      highlight = {
        before = "fg",
        keyword = "fg",
      },
      search = {
        pattern = [[\b(KEYWORDS)\b]],
      },
      }
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      numhl = true,
    },
  },
  {
    "SmiteshP/nvim-navic",
    event = "CursorMoved",
    config = function()
      dofile(vim.g.base46_cache .. "navic")

      require("nvim-navic").setup {
        highlight = true,
        lsp = { auto_attach = true },
      }

      vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = { "tpope/vim-repeat" },
    config = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
    end,
  },
}
