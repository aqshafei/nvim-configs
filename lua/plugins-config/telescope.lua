return function()
    require("telescope").setup {
        defaults = {
            border = true,
            layout_strategy = "bottom_pane",
            layout_config = {
                height = 0.30,
                width = 1.00,
            },
            sorting_strategy = "ascending",
        },
    }

    local builtin = require('telescope.builtin')
end
