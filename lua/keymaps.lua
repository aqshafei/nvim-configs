-- Ctrl+o to toggle nvim-tree
vim.keymap.set('n', "<C-o>", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree"})

-- LSP keybindings
vim.keymap.set({'n', 'v'}, "<A-Enter>", "<cmd>Lspsaga code_action<CR>", { desc = "Lspsaga code action" })
vim.keymap.set('n', "gD", vim.lsp.buf.declaration, { desc = "Show declaration" })
vim.keymap.set('n', "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definitions" })
vim.keymap.set('n', "gr", "<cmd>Lspsaga rename<CR>", { desc = "Lspsaga rename" })
vim.keymap.set('n', "gh", "<cmd>Lspsaga lsp_finder<CR>", { desc = "LSP finder" })
vim.keymap.set('n', 'K', "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover documentation"})
vim.keymap.set('n', "<C-k>", vim.lsp.buf.signature_help, { desc = "LSP signature help"})

-- Telescope keybindings
local builtin = require("telescope.builtin")
vim.keymap.set('n', "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set('n', "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set('n', "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set('n', "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Troble.nvim keybindings
vim.keymap.set('n', "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set('n', "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set('n', "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set('n', "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP Definitions / references / ... (Trouble)" })
vim.keymap.set('n', "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set('n', "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
