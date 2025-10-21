return {
    'benlubas/molten-nvim',
    version = "^1.0.0",
    build = ':UpdateRemotePlugins',
    dependencies = {
        'hrsh7th/nvim-cmp',
        'quarto-dev/quarto-nvim',
        'jmbuhr/otter.nvim',
    },
    ft = { 'python', 'jupyter' },
    config = function()
        -- Molten configuration
        vim.g.molten_auto_open_output = true
        vim.g.molten_image_provider = 'kitty'  -- Use Kitty terminal for image display
        vim.g.molten_use_border = true
        vim.g.molten_output_win_max_height = 12
        vim.g.molten_output_win_cover_gutter = false

        -- Key mappings
        vim.keymap.set('n', '<leader>mi', ':MoltenInit<CR>', { desc = 'Initialize Molten' })
        vim.keymap.set('n', '<leader>me', ':MoltenEvaluateOperator<CR>', { desc = 'Evaluate Operator' })
        vim.keymap.set('n', '<leader>ml', ':MoltenEvaluateLine<CR>', { desc = 'Evaluate Line' })
        vim.keymap.set('v', '<leader>mv', ':<C-u>MoltenEvaluateVisual<CR>', { desc = 'Evaluate Visual Selection' })
        vim.keymap.set("n", "<leader>rr", ":MoltenRunCell<CR>", { desc = "Run current cell" })
        vim.keymap.set("n", "<leader>ra", ":MoltenRunAll<CR>", { desc = "Run all cells" })
        vim.keymap.set("n", "<leader>ro", ":MoltenShowOutput<CR>", { desc = "Show last output" })
    end,
}
