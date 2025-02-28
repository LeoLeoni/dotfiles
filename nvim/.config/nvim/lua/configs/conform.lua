local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    javascript = { "eslint_d", "prettier" },
    typescript = { "eslint_d", "prettier" },
    typescriptreact = { "eslint_d", "prettier" },
    c = { "clangd" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
