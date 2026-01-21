require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  kotlin_lsp = {},
  clangd = {},
  pyright = {},
  gopls = {},
  biome = {},
  jsonls = {},
  ts_ls = {
    init_options = {
      hostinfo = "neovim",
      maxTsServerMemory = 4096,
      filetypes = { "typescriptreact", "typescript" },
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
