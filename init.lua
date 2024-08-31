--[[ 

licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
license"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
aS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
kIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

@author Aqeel AlShafei
@data November 20 2022
@modified February 24 2024

Current Keymap
crtl+o to toggle nerdtree
ctrl+p Fuzzy open files
Ctrl+t open a split top of the window with a terminal instance
K to show documentation in preview window (coc.nvim feature) 

]]

-- General Settings
vim.opt.encoding = "utf-8"
vim.opt.laststatus = 2
vim.opt.termguicolors = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- eanble mouse support
vim.opt.mouse = 'a'

-- Window Layout
vim.opt.number = true
vim.opt.title = true

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

-- Syntax
vim.opt.syntax = "on"
vim.opt.syntax = "enable"

-- Spell Check
vim.cmd([[
    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd BufRead,BufNewFile *.tex setlocal spell
    autocmd BufRead,BufNewFile *.txt setlocal spell
    autocmd BufRead,BufNewFile *.org setlocal spell
]])

-- Load plugins
require("plugins")
-- Load Keymaps
require("keymaps")
