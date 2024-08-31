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

]]


-- Install Packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Load Packer
vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)

    -- Package manager
    use "wbthomason/packer.nvim"

    -- General
    use { "startup-nvim/startup.nvim", requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}, config = function() require"startup".setup(require("startup_nvim")) end }
    use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }
    use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" }, }
    use { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { {"nvim-lua/plenary.nvim"} } }
    use { "akinsho/toggleterm.nvim", tag = "*", config = function() require("toggleterm").setup() end }
    use { "j-hui/fidget.nvim", config = function() require"fidget".setup{} end }
    use { "romgrk/barbar.nvim", wants = "nvim-web-devicons"}
    use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" }
    use "nvim-tree/nvim-web-devicons"

    -- Appearance
    use "Mofiqul/vscode.nvim"

    -- Documentation
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "nvim-orgmode/orgmode", config = function() require("orgmode").setup{} end }
    use "folke/neodev.nvim"

    -- General Programming

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":mason"
    }

    -- Completion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "FelipeLema/cmp-async-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-emoji"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"


    use { 'nvimdev/lspsaga.nvim', after = 'nvim-lspconfig', config = function() require('lspsaga').setup({}) end }
    use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu', }
    use { 'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim', config = function() require('nvim-lightbulb').setup({autocmd = {enabled = true}}) end }
    use { "folke/trouble.nvim", requires = { "nvim-tree/nvim-web-devicons" }, config = function() require("trouble").setup {} end }

end)
