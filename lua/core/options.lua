-- Colorscheme
vim.cmd.colorscheme("retrobox")

-- General UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.mouse = "a"
vim.opt.laststatus = 3
vim.opt.showmode = false

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Text editing
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.backspace = { "indent", "eol", "start" }

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Explorer
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 50

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Timings
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0

-- Undo
vim.opt.undofile = true

-- Live command preview
vim.opt.inccommand = "split"

-- Command line height
vim.opt.cmdheight = 1

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

