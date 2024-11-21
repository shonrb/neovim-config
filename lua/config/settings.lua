vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.api.nvim_create_user_command("Indent", (function(arg)
    v = tonumber(arg.args)
    vim.opt.tabstop     = v
    vim.opt.softtabstop = v
    vim.opt.shiftwidth  = v
end), {nargs=1})

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

