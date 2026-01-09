local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    javascript = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    kotlin = { "ktlint" }
  },

  -- These options will be passed to conform.format()
  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
