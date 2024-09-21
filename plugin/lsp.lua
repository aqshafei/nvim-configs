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

-- Configure Mason
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "neocmake",
        "clangd",
        "pyright",
        "ts_ls",
        "gopls",
        "rust_analyzer",
        "lua_ls",
        "sqlls",
        "bashls",
        "arduino_language_server",
        "unocss",
        "dockerls",
        "prosemd_lsp",
        "ruff_lsp",
        "taplo",
        "lemminx",
        "yamlls",
        "texlab",
        "kotlin_language_server",
        "gradle_ls",
        "helm_ls",
        "yamlls",
    },
}

-- Configure Neodev
require("neodev").setup({
    library = {
        enabled = true,
        runtime = true,
        types = true,
        plugins = true,
    },
    setup_jsonls = true,
    override = function(root_dir, options) end,
    lspconfig = true,
    pathStrict = true,
})


-- Configure Lspconfig
local lspconfig = require("lspconfig")

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_flags = {
    -- debounce_text_changes = 150,
    Lua = {
        completion = {
            callSnippet = "Replace"
        }
    }
}

-- CMake LSP
require('lspconfig')["neocmake"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Bash LSP
require("lspconfig")["bashls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Clangd LSP
require('lspconfig')["clangd"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Docker LSP
require("lspconfig")["dockerls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Markdown LSP
require("lspconfig")["prosemd_lsp"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- TOML LSP
require("lspconfig")["taplo"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- XML LSP
require("lspconfig")["lemminx"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- YAML LSP
require("lspconfig")["yamlls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- LaTex LSP
require("lspconfig")["texlab"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Kotlin LSP
require("lspconfig")["kotlin_language_server"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Gradle LSP
require("lspconfig")["gradle_ls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Python LSP
require('lspconfig')["ruff_lsp"].setup {
    on_attach = function(client, bufnr) client.server_capabilities.hoverProvider = false end,
    capabilities = capabilities,
    settings = lsp_flags,
}

require('lspconfig')["pyright"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Arduino LSP
require("lspconfig")["arduino_language_server"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Typescript LSP
require('lspconfig')["ts_ls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- CSS LSP
require("lspconfig")["unocss"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Golang LSP
require("lspconfig")["gopls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Rust LSP
require("lspconfig")["rust_analyzer"].setup {
    on_attach = on_attach,
    capabilities = capabilities,

    -- Server-specific settings...
    settings = {
        ["rust-analyzer"] = {},
        lsp_flags,
    }
}

-- SQL LSP
require('lspconfig')["sqlls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Helm LSP
require('lspconfig')["helm_ls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = lsp_flags,
}

-- Yaml LSP
require('lspconfig')["yamlls"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        telemetry = {
            enabled = false
        }
    },
}

