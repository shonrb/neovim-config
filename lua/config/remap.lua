vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selection in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor pos with J
vim.keymap.set("n", "J", "mzJ`z")      

-- Keep cursor mid screen when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz") 
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ESC to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n><C-\\><C-n>")

-- Windowing
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wL", "<C-w>L")
vim.keymap.set("n", "<leader>wK", "<C-w>K")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>w+", "<C-w>H")
vim.keymap.set("n", "<leader>w<Tab>", "<C-w><C-w>")
vim.keymap.set("n", "<leader>w/", "<C-w><C-v><C-w><C-w>")
vim.keymap.set("n", "<leader>w_", "<C-w><C-s><C-w><C-w>")

-- Terms
function quickterm() 
    vim.cmd("bot new")
    vim.cmd("resize 10")
    vim.cmd("terminal")
    vim.fn.feedkeys("a")
end 
vim.keymap.set("n", "<leader>@", ":terminal<Esc>")
vim.keymap.set("n", "<leader>'", quickterm)
vim.keymap.set("n", "<leader>cs", function()
    vim.g.compile_command = vim.fn.input("Compile Command: ")
end)
vim.keymap.set("n", "<leader>cc", function()
    if not vim.g.compile_command then
        print("No compile command set")
        return
    end
    local enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
    quickterm()
    vim.fn.feedkeys(vim.g.compile_command)
    vim.fn.feedkeys(enter)
    vim.fn.feedkeys(esc)
end)

-- Quick quit
vim.keymap.set("n", "<leader>q", function()
    if vim.bo.buftype == "terminal" then
        vim.cmd("q!")
    else
        vim.cmd("x")
    end
end)


-- Insert mode quick delete
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', {noremap = true})

