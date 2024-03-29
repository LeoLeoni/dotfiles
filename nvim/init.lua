local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

opt.relativenumber = true
opt.shell = "/bin/zsh"

-- Default spacing for nvchad is 2
autocmd("FileType", {
	pattern = { "kotlin", "java", "go", "rust", "html", "python" },
	callback = function()
		opt.shiftwidth = 4
		opt.tabstop = 4
		opt.softtabstop = 4
	end,
})

autocmd("FileType", {
	pattern = { "json", "javascript", "typescript", "typescriptreact", "css", "scss" },
	callback = function()
		opt.shiftwidth = 2
		opt.tabstop = 2
		opt.softtabstop = 2
	end,
})
-- vim.api.nvim_clear_autocmd("BufWritePre", {})
