return {
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    keymap = { preset = "super-tab" },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
    },

    completion = {

        accept = { auto_brackets = { enabled = true } },

        keyword = { range = "full" },

        documentation = {
            auto_show = true,
            auto_show_delay_ms = 265,
            treesitter_highlighting = true,
            window = {
                winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc"
            }
        },

        ghost_text = { enabled = true },

        menu = {
            draw = {
                -- Use colorful-menu.nvim
                columns = { { "kind_icon" }, { "label", gap = 1 } },
                components = {
                    label = {
                        text = function(ctx)
                            return require("colorful-menu").blink_components_text(ctx)
                        end,
                        highlight = function(ctx)
                            return require("colorful-menu").blink_components_highlight(ctx)
                        end,
                    },
                },
            },
        }
    },

    snippets = { preset = "luasnip" },

    signature = {
        enabled = true,
        trigger = {
            enabled = true,
        },
        window = {
            show_documentation = true,
            treesitter_highlighting = true,
        }
    }
}
