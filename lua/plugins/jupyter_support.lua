
-- This is a file containing molten and other plugins that are good for supporting that
-- I am putting them all together for locality of behaviour (or whatever it is callled)

return {
    -- Jupytext for converting .ipynb to editable format
    {
        "GCBallesteros/jupytext.nvim",
        lazy = false,
        config = function()
            require("jupytext").setup({
                style = "markdown",
                output_extension = "md",
                force_ft = "markdown",
            })
        end,
    },
    -- Molten
    {
        "benlubas/molten-nvim",
        build = ":UpdateRemotePlugins",
        dependencies = {
            "3rd/image.nvim",
        },
        keys = {
            { "<leader>mi", "<cmd>MoltenInit<cr>", desc = "Initialize Molten" },
            { "<leader>me", ":<C-u>MoltenEvaluateOperator<cr>", desc = "Evaluate operator", mode = "n" },
            { "<leader>ml", "<cmd>MoltenEvaluateLine<cr>", desc = "Evaluate line" },
            { "<leader>mc", "<cmd>MoltenReevaluateCell<cr>", desc = "Re-evaluate cell" },
            { "<leader>mr", ":<C-u>MoltenEvaluateVisual<cr>gv", desc = "Evaluate visual selection", mode = "v" },
            { "<leader>md", "<cmd>MoltenDelete<cr>", desc = "Delete cell" },
            { "<leader>mo", "<cmd>noautocmd MoltenEnterOutput<cr>", desc = "Show output" },
        },
        config = function()
            vim.g.molten_image_provider = "image.nvim"
            vim.g.molten_output_win_max_height = 20
            vim.g.molten_auto_open_output = true
            vim.g.molten_wrap_output = true
            vim.g.molten_virt_text_output = true
            vim.g.molten_virt_lines_off_by_1 = true
            vim.g.molten_use_border_highlights = true
            
            -- Automatically import output chunks from a jupyter notebook
            vim.g.molten_auto_image_popup = true
            
            -- Don't change the mappings (for safer usage)
            vim.g.molten_enter_output_behavior = "open_then_enter"
        end,
    },

    -- Image support for Molten
    {
        "3rd/image.nvim",
        opts = {
            backend = "kitty",
            integrations = {
                markdown = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = true,
                    only_render_image_at_cursor = false,
                },
            },
            max_width = 100,
            max_height = 12,
            max_height_window_percentage = math.huge,
            max_width_window_percentage = math.huge,
            window_overlap_clear_enabled = true,
            window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        },
    },

    -- Quarto for .ipynb support (optional but recommended)
    {
        "quarto-dev/quarto-nvim",
        ft = { "quarto", "markdown" },
        dependencies = {
            "jmbuhr/otter.nvim",
        },
        opts = {
            lspFeatures = {
                enabled = true,
                languages = { "python", "lua" },
                diagnostics = {
                    enabled = true,
                    triggers = { "BufWritePost" },
                },
                completion = {
                    enabled = true,
                },
            },
        },
    },
}
