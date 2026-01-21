require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt = "both"
o.number = true
o.relativenumber = true
o.shell = "/bin/zsh"
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
-- TODO: this makes things like telescope look ugly. It's only enabled on lsp hover now (see mappings)
-- o.winborder = 'single'
