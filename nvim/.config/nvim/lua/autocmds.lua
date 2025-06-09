require "nvchad.autocmds"
local o = vim.o
local autocmd = vim.api.nvim_create_autocmd

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

autocmd({ "InsertLeave", "BufWritePost", "BufReadPost" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()
  end,
})

-- Save cursor position on file open/close
autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})
