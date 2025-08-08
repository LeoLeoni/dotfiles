require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  kotlin_lsp = {},
  clangd = {},
  pyright = {},
  ts_ls = {
    init_options = {
      hostinfo = "neovim",
      maxTsServerMemory = 4096,
      filetypes = { "typescriptreact, typescript" },
    }
  },
  eslint = {
    init_options = {
      filetypes = { "typescriptreact, typescript" },
    }
  },
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
