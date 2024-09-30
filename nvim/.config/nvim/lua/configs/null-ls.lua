local null_ls = require "null-ls"

-- local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
   --formatting.eslint,
   -- formatting.eslint_d,
   diagnostics.eslint,
   code_actions.eslint,
   -- formatting.ktlint,
   -- diagnostics.ktlint,
   --formatting.prettier,
   -- formatting.prettierd,
   -- formatting.stylua,
   -- formatting.rustfmt,
   -- formatting.gofmt,
   -- formatting.goimports,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
