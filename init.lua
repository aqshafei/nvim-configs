-- General Settings
vim.opt.encoding = "utf-8"
vim.opt.laststatus = 2
vim.opt.termguicolors = true

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Eanble mouse support
vim.opt.mouse = 'a'

-- Window layout
vim.opt.number = true
vim.opt.title = true
vim.opt.winborder = "rounded"

-- Editor
vim.opt.filetype = "plugin"
vim.opt.filetype = "indent"
vim.opt.filetype = "on"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.smarttab = true

vim.opt.clipboard = "unnamedplus"

vim.opt.syntax = "on"
vim.opt.syntax = "enable"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Spell Check
vim.cmd([[
    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd BufRead,BufNewFile *.tex setlocal spell
    autocmd BufRead,BufNewFile *.txt setlocal spell
    autocmd BufRead,BufNewFile *.org setlocal spell
]])

-- Load plugins
require("plugins")
-- Load keymaps
require("keymaps")
