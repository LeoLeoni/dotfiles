local M = {}

-- Disables nvchad default keymappings
M.disabled = {
  n = {
    ["<leader>n"] = "", -- nvchad defaults for set number and relativenumber. Never changing.
    ["<leader>rn"] = "",
    ["<leader>gt"] = "", -- replaced with gs
  },
}

M.general = {
  n = {
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["*"] = { "*zz" },
    ["#"] = { "#zz" }
  }
}
M.telescope = {
  plugin = true,
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>gr"] = { "<cmd> Telescope lsp_references <CR>", "telescope references" },
    ["<leader>fw"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "workspace symbols" },
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "workspace symbols" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
  }
}

return M
