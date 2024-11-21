return {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
        require("startup").setup({
            -- every line should be same width without escaped \
            header = {
                type = "text",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Header",
                margin = 5,
                content = require("startup.headers").hydra_header,
                highlight = "Statement",
                default_color = "",
                oldfiles_amount = 0,
            },
            subheader = {
                type = "text",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Footer",
                margin = 5,
                content = { "[N E O V I M]" },
                highlight = "Number",
                default_color = "",
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
                    { " Recent Files", "Telescope oldfiles", "<leader>fo"},
                    { " Colorschemes", "Telescope colorscheme", "<leader>T"},
                },
                highlight = "String",
                default_color = "",
                oldfiles_amount = 0,
            },
            clock = {
                type = "text",
                content = function()
                    local clock = " " .. os.date("%H:%M")
                    local date = " " .. os.date("%d-%m-%y")
                    return { clock, date }
                end,
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "",
                margin = 5,
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
                background = "#1f2227",
                folded_section = "#56b6c2",
            },
            parts = { "header", "subheader", "body", "clock" },
        })
    end
} 
