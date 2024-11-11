-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyonight" },
  telescope = { style = "bordered" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    -- Matches don't look good on catppuccin
    Search = { bg = "vibrant_green" },
    Substitute = { bg = "vibrant_green" },
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
    -- "eslint_d",
    "eslint-lsp",
    "json-lsp",
    "kotlin-language-server",
    "ktlint",
    "rust-analyzer",
    -- "gopls",
  },
}

return M
