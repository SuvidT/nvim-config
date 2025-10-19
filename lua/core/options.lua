local o = vim.opt

o.number = true
o.relativenumber = true
o.mouse = "a"
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.wrap = false
o.breakindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.termguicolors = true
o.signcolumn = "yes"
o.updatetime = 250
o.timeoutlen = 300
o.completeopt = "menu,menuone,noselect"
o.undofile = true
o.splitright = true
o.splitbelow = true
o.scrolloff = 8
o.clipboard = "unnamedplus"

--[[
vim.g.autoformat = true
vim.g.snacks_animate = true
vim.g.lazyvim_picker = "auto"
vim.g.lazyvim_cmp = "auto"
vim.g.ai_cmp = false
vim.g.root_spec = {"lsp", {".git", "lua"}, "cwd"}
vim.g.deprecation_warnings = true
vim.g.trouble_lualine = true

vim.opt.autowrite = true
]]
