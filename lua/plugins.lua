-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
return require("lazy").setup({
    spec = {
        {
            "Mofiqul/vscode.nvim",
            config = function() require("plugins-config.vscode")() end
        },
        {
            "nvim-lualine/lualine.nvim",
            dependencies = "nvim-tree/nvim-web-devicons",
            config = function() require("lualine").setup() end
        },
        {
            "nvim-tree/nvim-tree.lua",
            version = "*",
            lazy = false,
            dependencies = "nvim-tree/nvim-web-devicons",
            config = function() require("nvim-tree").setup() end
        },
        {
            "nvim-telescope/telescope.nvim",
            branch = "0.1.x",
            dependencies = "nvim-lua/plenary.nvim",
            config = function() require("plugins-config.telescope")() end
        },
        {
            "akinsho/toggleterm.nvim",
            version = "*",
            config = function() require("plugins-config.toggleterm")() end
        },
        {
            "akinsho/bufferline.nvim",
            version = "*",
            dependencies = "nvim-tree/nvim-web-devicons",
            config = function() require("bufferline").setup() end
        },
        {

            "nvim-treesitter/nvim-treesitter",
            branch = "main",
            build = ":TSUpdate",
            config = function() require("plugins-config.treesitter")() end,
            lazy = false,
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {},
            dependencies = {
                { "mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig",
            },
            config = function() require("plugins-config.lsp")() end
        },
        {
            "saghen/blink.cmp",
            dependencies = { "rafamadriz/friendly-snippets", "xzbdmw/colorful-menu.nvim", { "L3MON4D3/LuaSnip", version = "v2.*" } },
            version = "1.*",
            opts = require("plugins-config.blink"),
            opts_extend = { "sources.default" }
        },
        {
            "nvimdev/lspsaga.nvim",
            config = function() require("lspsaga").setup() end,
            dependencies = {
                "nvim-treesitter/nvim-treesitter",
                "nvim-tree/nvim-web-devicons",
            }
        }
    },

    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
