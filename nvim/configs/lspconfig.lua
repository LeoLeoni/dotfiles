local on_attach = require('plugins.configs.lspconfig').on_attach
local capabilities = require('plugins.configs.lspconfig').capabilities

local lspconfig = require 'lspconfig'

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml")
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    hostinfo = 'neovim',
    maxTsServerMemory = 4096,
    filetypes = {"typescriptreact, typescript"},
    plugins = {
      { name = 'typescript-plugin-css-modules' }
    }
  }
})

lspconfig.kotlin_language_server.setup {}
