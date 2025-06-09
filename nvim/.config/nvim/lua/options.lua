require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt = "both"
o.number = true
o.relativenumber = true
o.shell = "/bin/zsh"
-- o.winborder = 'single' TODO: this makes things like telescope look ugly. It's only enabled on lsp hover now (see mappings)
