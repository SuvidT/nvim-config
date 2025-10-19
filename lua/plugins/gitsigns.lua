
return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "│" },
                    change = { text = "│" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                },
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns
                    local opts = { buffer = bufnr }
                    vim.keymap.set("n", "]c", gs.next_hunk, opts)
                    vim.keymap.set("n", "[c", gs.prev_hunk, opts)
                    vim.keymap.set("n", "<leader>gs", gs.stage_hunk, opts)
                    vim.keymap.set("n", "<leader>gr", gs.reset_hunk, opts)
                    vim.keymap.set("n", "<leader>gp", gs.preview_hunk, opts)
                    vim.keymap.set("n", "<leader>gb", gs.blame_line, opts)
                end,
            })
        end,
    },
}
