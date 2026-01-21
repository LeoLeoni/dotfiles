local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    javascript = { "biome-check" },
    typescript = { "biome-check" },
    typescriptreact = { "biome-check" },
    kotlin = { "ktlint" }
  },
  formatters = {
    biome_check = {
      append_args = {
        "--diagnostic-level=error",
        "--linter-enabled=true"
      }
    }
  },

  -- These options will be passed to conform.format()
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

return options
