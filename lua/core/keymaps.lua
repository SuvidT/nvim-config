
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- File
keymap("n", "<leader>fw", ":wa<CR>", { desc = "Write Files" })
keymap("n", "<leader>fq", ":q<CR>", { desc = "Quit File" })
keymap("n", "<leader>fQ", ":qa!<CR>", { desc = "Force Quit All Files" })

-- Buffers
keymap("n", "<leader>bl", ":ls<CR>", { desc = "List Buffers" })
keymap("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" })
keymap("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" })
keymap("n", "<leader>b1", ":b 1<CR>", { desc = "Goto Buffer 1" })
keymap("n", "<leader>b2", ":b 2<CR>", { desc = "Goto Buffer 2" })
keymap("n", "<leader>b3", ":b 3<CR>", { desc = "Goto Buffer 3" })
keymap("n", "<leader>b4", ":b 4<CR>", { desc = "Goto Buffer 4" })
keymap("n", "<leader>b5", ":b 5<CR>", { desc = "Goto Buffer 5" })
keymap("n", "<leader>b6", ":b 6<CR>", { desc = "Goto Buffer 6" })
keymap("n", "<leader>b7", ":b 7<CR>", { desc = "Goto Buffer 7" })
keymap("n", "<leader>b8", ":b 8<CR>", { desc = "Goto Buffer 8" })
keymap("n", "<leader>b9", ":b 9<CR>", { desc = "Goto Buffer 9" })
keymap("n", "<leader>b0", ":b 10<CR>", { desc = "Goto Buffer 10" })
keymap("n", "<leader>be", ":e ", { desc = "New Buffer" })
keymap("n", "<leader>bd", ":bd", { desc = "Delete Buffer" })

-- Window
keymap("n", "<leader>ws", ":sp<CR>", { desc = "Horizontally Split Windows" })
keymap("n", "<leader>wv", ":vsp<CR>", { desc = "Vertically Split Windows" })
