require "nvchad.options"
local opt = vim.opt
-- add yours here!


opt.relativenumber = true
opt.colorcolumn = { 80 }
vim.api.nvim_set_option("clipboard","unnamedplus")
vim.o.inccommand = "split"
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
