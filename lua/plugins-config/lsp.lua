return function ()
    local servers = {
    -- CMake
    "cmake",
    -- Bash
    "bashls",
    -- C/C++/Objective-C
    "clangd",
    -- Docker
    "dockerls",
    -- Markdown
    "markdown_oxide",
    -- TOML
    "taplo",
    -- XML
    "lemminx",
    -- YAML
    "yamlls",
    -- LaTeX
    "texlab",
    -- Kotlin
    "kotlin_lsp",
    -- Gradle
    "gradle_ls",
    -- Python
    "ruff",
    "pyright",
    -- Arduino
    "arduino_language_server",
    -- JavaScript and TypeScript
    "eslint",
    -- CSS
    "unocss",
    -- Go
    "gopls",
    -- Rust
    "rust_analyzer",
    -- SQL
    "sqls",
    -- Helm
    "helm_ls",
    -- Yaml
    "yamlls",
}

-- `yamlls` lsp configurations
vim.lsp.config("yamlls", {
    settings = {
        telemetry = {
            enabled = false
        },
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/playbook"] =
                "*play*.{yml,yaml}",
                ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
                ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
                ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
                kubernetes = {
                    "manifests/*.{yml,yaml}",
                    "*deployment.{yml,yaml}",
                    "*service.{yml,yaml}",
                    "*configmap.{yml,yaml}",
                    "*pv.{yml,yaml}",
                    "*pvc.{yml,yaml}",
                    "*storageclass.{yml,yaml}",
                    "*secret.{yml,yaml}",
                    "*statefulset.{yml,yaml}",
                    "*daemonset.{yml,yaml}",
                    "*ingress.{yml,yaml}",
                },
            }
        }
    },
})

vim.lsp.enable(servers)
require("mason-lspconfig").setup { ensure_installed = servers, }

end
