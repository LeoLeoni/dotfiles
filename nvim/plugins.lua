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
        'rust'
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
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  }
}
return plugins
