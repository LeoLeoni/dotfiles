require "nvchad.mappings"

-- add yours here

local nomap = vim.keymap.del

nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<leader>gt")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F1>", "<ESC>")
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "*", "*zz")
map("n", "#", "#zz")

-- Put a border on the hover window. Ideally this would be set in vim.o.winborder but it makes telescope look like shit
map("n", "K", function()
  vim.lsp.buf.hover({ border = "single" })
end, { desc = "LSP Hover" })

map("n", "<leader>ca", function ()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

map("n", "<leader>fg", "<cmd> Telescope live_grep <CR>", { desc = "live grep" })
map("n", "<leader>gr", "<cmd> Telescope lsp_references <CR>", { desc = "telescope references" })
map("n", "<leader>fw", "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", { desc = "workspace symbols" })
map("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "workspace symbols" })
map("n", "<leader>gs", "<cmd> Telescope git_status <CR>", { desc = "git status" })

map("n", "<leader>tt", "<cmd> Telescope resume <CR>", { desc = "Repeat Telescope" })

map("n", "<leader>rh", require("gitsigns").reset_hunk, { desc = "Reset Hunk" })
map("n", "<leader>ph", require("gitsigns").preview_hunk, { desc = "Preview Hunk" })
map("n", "<leader>gb", require("gitsigns").blame_line, { desc = "Blame Line" })

map("n", "<leader>nh", function()
  require("gitsigns").nav_hunk("next")
end, { desc = "Next Hunk" })
map("n", "<leader>Nh", function()
  require("gitsigns").nav_hunk("prev")
end, { desc = "Previous Hunk" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
