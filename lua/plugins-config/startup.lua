return function()
    require "startup".setup({
        -- every line should be same width without escaped \
        header = {
            type = "text",
            oldfiles_directory = false,
            align = "center",
            fold_section = false,
            title = "Header",
            margin = 5,
            content = {
                "         =*:   -*-   :*=         ",
                "         @@+   #@%   +@@         ",
                "     :+**@@%***@@@***%@@**+.     ",
                "     @@@@###%%%###%%%###@@@%     ",
                " -===@@#                 %@@===- ",
                ":@@@@@@*   :-:-----:-:   #@@@@@@:",
                "     @@*   #@@@@@@@@@#   #@%     ",
                " ::::@@*   *@@@@@@@@@*   #@%:::: ",
                "-@@@@@@*   *@@@@@@@@@*   #@@@@@@-",
                "  ...@@*   *@@@@@@@@@*   #@%...  ",
                "    .@@*   #@@@@@@@@@#   #@%     ",
                ":@@@@@@*   .:::::::::.   #@@@@@@-",
                " :---@@%:               :%@@---: ",
                "     %@@@@@@@@@@@@@@@@@@@@@#     ",
                "      --=@@#===%@%===#@@=--      ",
                "         @@+   #@%   +@@         ",
                "         =*:   -*-   :*=         ",
            },
            highlight = "Statement",
            default_color = "#991ead",
            oldfiles_amount = 0,
        },
        -- name which will be displayed and command
        body = {
            type = "mapping",
            oldfiles_directory = false,
            align = "center",
            fold_section = false,
            title = "Basic Commands",
            margin = 5,
            content = {
                { " Find File", "Telescope find_files", "<leader>ff" },
                { " Find Word", "Telescope live_grep", "<leader>lg" },
                { " Recent Files", "Telescope oldfiles", "<leader>of" },
                { " File Browser", "NvimTreeToggle", "<leader>fb" },
                { " New File", "lua require'startup'.new_file()", "<leader>nf" },
            },
            highlight = "String",
            default_color = "",
            oldfiles_amount = 0,
        },

        clock = {
            type = "text",
            content = function()
                local clock = " " .. os.date("%H:%M")
                local date = " " .. os.date("%B, %d, %Y")
                return { clock, date }
            end,
            oldfiles_directory = false,
            align = "center",
            fold_section = false,
            title = "",
            margin = 2,
            highlight = "TSString",
            default_color = "#FFFFFF",
            oldfiles_amount = 10,
        },

        options = {
            mapping_keys = true,
            cursor_column = 0.5,
            empty_lines_between_mappings = true,
            disable_statuslines = true,
            paddings = { 1, 3, 3, 0 },
        },

        mappings = {
            execute_command = "<CR>",
            open_file = "o",
            open_file_split = "<c-o>",
            open_section = "<TAB>",
            open_help = "?",
        },

        colors = {
            -- background = "#1f2227",
            background = "#991ead",
            folded_section = "#56b6c2",
        },
        parts = { "header", "clock", "body" },
    })
end
