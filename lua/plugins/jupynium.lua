return {
    {
        "kiyoon/jupynium.nvim",
        build = "pip3 install --user .",
        dependencies = {
            "rcarriga/nvim-notify",
            "stevearc/dressing.nvim",
        },
        keys = {
            { "<leader>jn", "<cmd>JupyniumStartAndAttachToServer<cr>", desc = "Start Jupynium" },
            { "<leader>js", "<cmd>JupyniumStartSync<cr>", desc = "Start sync" },
            { "<leader>je", "<cmd>JupyniumExecuteSelectedCells<cr>", desc = "Execute selected cells", mode = { "n", "v" } },
            { "<leader>jc", "<cmd>JupyniumClearSelectedCellsOutputs<cr>", desc = "Clear cell outputs" },
            { "<leader>jk", "<cmd>JupyniumKernelHover<cr>", desc = "Kernel hover" },
        },
        config = function()
            require("jupynium").setup({
                python_host = { "python3", "-m", "jupynium", "--notebook-dir", vim.fn.expand("~") },
                default_notebook_URL = "localhost:8888",
                
                -- Syntax highlight for notebook cells
                syntax_highlight = {
                    enable = true,
                },
                
                -- Auto-start jupynium
                auto_start_server = {
                    enable = false,
                    file_pattern = { "*.ju.*" },
                },
                
                -- Scroll options
                auto_download_ipynb = true,
                auto_close_tab = true,
                
                -- Shortsighted mode (sync only visible cells)
                shortsighted = false,
            })
        end,
    },
}
