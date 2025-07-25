-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "rosepine",
  theme_toggle = { "rosepine", "rosepine" },
  telescope = { style = "bordered" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    -- Matches don't look good on catppuccin
    -- Search = { bg = "vibrant_green" },
    -- Substitute = { bg = "vibrant_green" },
  },

  integrations = { "navic", "todo" },
}

-- Removes the space for NvimTree
M.ui = {
  tabufline = {
    order = { "buffers", "tabs", "btns" },
  },
}

M.mason = {
  pkgs = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "prettier",
    "typescript-language-server",
    "eslint_d",
    "eslint-lsp",
    "json-lsp",
    "kotlin-language-server",
    "ktlint",
    "rust-analyzer",
    "clangd",
    "pyright",
    -- "gopls",
  },
}

return M
