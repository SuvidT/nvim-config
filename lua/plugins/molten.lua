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
        vim.g.molten_image_provider = 'image.nvim'  -- Use Kitty terminal for image display
        vim.g.molten_use_border = true
        vim.g.molten_output_win_max_height = 12
        vim.g.molten_output_win_cover_gutter = false
        vim.g.molten_auto_open_output = true     -- automatically open output after running
        vim.g.molten_wrap_output = true          -- wrap long outputs
        vim.g.molten_virt_text_output = true     -- show inline virtual text outputs
        vim.g.molten_virt_lines_off_by_1 = true  -- small aesthetic tweak
        vim.g.molten_use_border_highlights = true
        vim.g.molten_enter_output_behavior = "open_then_enter" -- makes the output "stick"

        -- Key mappings
        vim.keymap.set('n', '<leader>mi', ':MoltenInit<CR>', { desc = 'Initialize Molten' })
        vim.keymap.set('n', '<leader>me', ':MoltenEvaluateOperator<CR>', { desc = 'Evaluate Operator' })
        vim.keymap.set('n', '<leader>ml', ':MoltenEvaluateLine<CR>', { desc = 'Evaluate Line' })
        vim.keymap.set('v', '<leader>mv', ':<C-u>MoltenEvaluateVisual<CR>', { desc = 'Evaluate Visual Selection' })
        vim.keymap.set("n", "<leader>mr", ":MoltenRunCell<CR>", { desc = "Run current cell" })
        vim.keymap.set("n", "<leader>ma", ":MoltenRunAll<CR>", { desc = "Run all cells" })
        vim.keymap.set("n", "<leader>mo", ":MoltenShowOutput<CR>", { desc = "Show last output" })
    end,
}
