local def_opt = { noremap = true, silent = true }

-- Ctrl+o to toggle nvim-tree
vim.keymap.set('n', "<C-o>", ":NvimTreeToggle<CR>", def_opt)

-- LSP keybindings
vim.keymap.set({'n', 'v'}, "<A-Enter>", "<cmd>Lspsaga code_action<CR>", def_opt)
vim.keymap.set('n', "gD", vim.lsp.buf.declaration, def_opt)
vim.keymap.set('n', "gd", "<cmd>Lspsaga peek_definition<CR>", def_opt)
vim.keymap.set('n', "gr", "<cmd>Lspsaga rename<CR>", def_opt)
vim.keymap.set('n', "gh", "<cmd>Lspsaga lsp_finder<CR>", def_opt)
vim.keymap.set('n', 'K', "<cmd>Lspsaga hover_doc<CR>", def_opt)
vim.keymap.set('n', "<C-k>", vim.lsp.buf.signature_help, def_opt)

-- Telescope keybindings
local telescope = require("telescope.builtin")
-- file files
vim.keymap.set('n', "<leader>ff", telescope.find_files, def_opt)
-- live grep
vim.keymap.set('n', "<leader>fg", telescope.live_grep, def_opt)
-- buffers
vim.keymap.set('n', "<leader>fb", telescope.buffers, def_opt)
-- help tags
vim.keymap.set('n', "<leader>fh", telescope.help_tags, def_opt)

-- Troble.nvim keybindings
-- vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
-- vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
-- vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
-- vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
-- vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
-- vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
