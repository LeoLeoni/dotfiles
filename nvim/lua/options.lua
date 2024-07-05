require "nvchad.options"

-- add yours here!

local o = vim.o
local autocmd = vim.api.nvim_create_autocmd

o.cursorlineopt = "both"
o.relativenumber = true
o.shell = '/bin/zsh'


-- Default spacing for nvchad is 2
autocmd("FileType", {
	pattern = { "kotlin", "java", "go", "rust", "html", "python" },
	callback = function()
		o.shiftwidth = 4
		o.tabstop = 4
		o.softtabstop = 4
	end,
})

autocmd("FileType", {
	pattern = { "json", "javascript", "typescript", "typescriptreact", "css", "scss" },
	callback = function()
		o.shiftwidth = 2
		o.tabstop = 2
		o.softtabstop = 2
	end,
})

autocmd("FileType", {
	pattern = { "c" },
	callback = function()
		o.shiftwidth = 8
		o.tabstop = 8
		o.softtabstop = 8
	end,
})
