local builtin = require "telescope.builtin"
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
    extensions = {
        file_browser = {
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                  -- your custom insert mode mappings
                },
                ["n"] = {
                    ["e"] = fb_actions.goto_parent_dir,
                    ["~"] = fb_actions.goto_home_dir,
                },
            }
        }
    }
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>T", builtin.colorscheme, {})
vim.keymap.set(
    "n",
    "<space>fe",
    ":Telescope file_browser path=%:p:h select_buffer=true hidden=true initial_mode=normal<CR>",
    { noremap = true }
)

