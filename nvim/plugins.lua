local plugins = {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function ()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'tsx',
        'json',
        'kotlin',
        'scss',
        'rust',
        'go',
      }
    }
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'typescript-language-server',
        'lua-language-server',
        --'eslint-lsp',
        'eslint_d',
        'json-lsp',
        'ktlint',
        'prettier',
        'rust-analyzer',
        'stylua',
        'gopls',
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
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
        pattern = [[\b(KEYWORDS)\b]]
      }
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      numhl = true,
    }
  }
}
return plugins
