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
@modified November 20 2022

Global Keybindings:

Ctrl+\ to Open a Horizental Terminal

Normal Mode Keybindings:

Ctrl+o to toggle nvim-tree
GD to show declaration
Gd to show definition
Gi to show implementation
Gr to show references
K to hover
C-k to show signature help
Alt-Enter to show code action
]]

local def_opt = { noremap = true, silent = true }

-- Ctrl+o to toggle nvim-tree
vim.keymap.set('n', "<C-o>", ":NvimTreeToggle<CR>", def_opt)

-- LSP keybindings
vim.keymap.set({'n', 'v'}, "<A-Enter>", "<cmd>Lspsaga code_action<CR>", def_buf_opt)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, def_buf_opt)
vim.keymap.set('n', 'gd', "<cmd>Lspsaga peek_definition<CR>", def_buf_opt)
vim.keymap.set('n', 'gr', "<cmd>Lspsaga rename<CR>", def_buf_opt)
vim.keymap.set('n', 'gh', "<cmd>Lspsaga lsp_finder<CR>", def_buf_opt)
vim.keymap.set('n', 'K', "<cmd>Lspsaga hover_doc<CR>", def_buf_opt)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, def_buf_opt)

-- Telescope keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Troble.nvim keybindings
vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
