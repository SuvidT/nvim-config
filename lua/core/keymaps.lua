
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- File
map("n", "<leader>fw", ":wa<CR>", { desc = "Write Files" })
map("n", "<leader>fq", ":q<CR>", { desc = "Quit File" })
map("n", "<leader>fQ", ":qa!<CR>", { desc = "Force Quit All Files" })

-- Buffers
map("n", "<leader>bl", ":ls<CR>", { desc = "List Buffers" })
map("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" })
map("n", "<leader>b1", ":b 1<CR>", { desc = "Goto Buffer 1" })
map("n", "<leader>b2", ":b 2<CR>", { desc = "Goto Buffer 2" })
map("n", "<leader>b3", ":b 3<CR>", { desc = "Goto Buffer 3" })
map("n", "<leader>b4", ":b 4<CR>", { desc = "Goto Buffer 4" })
map("n", "<leader>b5", ":b 5<CR>", { desc = "Goto Buffer 5" })
map("n", "<leader>b6", ":b 6<CR>", { desc = "Goto Buffer 6" })
map("n", "<leader>b7", ":b 7<CR>", { desc = "Goto Buffer 7" })
map("n", "<leader>b8", ":b 8<CR>", { desc = "Goto Buffer 8" })
map("n", "<leader>b9", ":b 9<CR>", { desc = "Goto Buffer 9" })
map("n", "<leader>b0", ":b 10<CR>", { desc = "Goto Buffer 10" })
map("n", "<leader>be", ":e ", { desc = "New Buffer" })
map("n", "<leader>bd", ":bd", { desc = "Delete Buffer" })

-- Window
map("n", "<leader>ws", "<C-w>s", { desc = "Split Window Horizontally" })
map("n", "<leader>wv", "<C-w>v", { desc = "Split Window Vertically" })
map("n", "<leader>wh", "<C-w>h", { desc = "Move to Left Window" })
map("n", "<leader>wj", "<C-w>j", { desc = "Move to Bottom Window" })
map("n", "<leader>wk", "<C-w>k", { desc = "Move to Top Window" })
map("n", "<leader>wl", "<C-w>l", { desc = "Move to Right Window" })

-- Tab
map("n", "<leader>tn", ":tabnew<CR>", { desc = "Open New Tab" })
map("n", "<leader>tl", ":tabn<CR>", { desc = "Next Tab" })
map("n", "<leader>th", ":tabp<CR>", { desc = "Previous Tab" })
map("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
