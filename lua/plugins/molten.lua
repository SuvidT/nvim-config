return {
    'benlubas/molten-nvim',
    version = "^1.0.0",
    build = ':UpdateRemotePlugins',
    dependencies = {
        'hrsh7th/nvim-cmp',
    },
    ft = { 'python', 'jupyter' },
    config = function()
        -- Core Molten Settings
        vim.g.molten_image_provider = 'image.nvim'
        vim.g.molten_output_win_max_height = 20
        vim.g.molten_auto_open_output = false
        vim.g.molten_wrap_output = true
        vim.g.molten_virt_text_output = true
        vim.g.molten_virt_lines_off_by_1 = true
        
        -- Border and window settings
        vim.g.molten_use_border_highlights = true
        vim.g.molten_output_win_border = { "", "━", "", "" }
        
        -- CRITICAL: This makes the output window enterable
        vim.g.molten_enter_output_behavior = "open_then_enter"
        
        -- Keep output visible and scrollable
        vim.g.molten_output_show_more = true
        vim.g.molten_output_win_hide_on_leave = false
        
        -- Keymaps
        local map = vim.keymap.set
        
        -- Initialize and manage Molten
        map('n', '<leader>mi', ':MoltenInit<CR>', { silent = true, desc = 'Molten: Initialize kernel' })
        map('n', '<leader>mq', ':MoltenDeinit<CR>', { silent = true, desc = 'Molten: Quit/deinit kernel' })
        map('n', '<leader>ms', ':MoltenInfo<CR>', { silent = true, desc = 'Molten: Show status' })
        
        -- Evaluate code
        map('n', '<leader>ml', ':MoltenEvaluateLine<CR>', { silent = true, desc = 'Molten: Evaluate line' })
        map('v', '<leader>mv', ':<C-u>MoltenEvaluateVisual<CR>gv', { silent = true, desc = 'Molten: Evaluate visual' })
        map('n', '<leader>mc', ':MoltenReevaluateCell<CR>', { silent = true, desc = 'Molten: Re-evaluate cell' })
        
        -- Output window navigation
        map('n', '<leader>mo', ':MoltenEnterOutput<CR>', { silent = true, desc = 'Molten: Enter output window' })
        map('n', '<leader>mh', ':MoltenHideOutput<CR>', { silent = true, desc = 'Molten: Hide output' })
        map('n', '<leader>md', ':noautocmd MoltenEnterOutput<CR>', { silent = true, desc = 'Molten: Enter output (no auto)' })
        
        -- Import output as code
        map('n', '<leader>mi', ':MoltenImportOutput<CR>', { silent = true, desc = 'Molten: Import output to code' })
        
        -- Delete cell
        map('n', '<leader>mx', ':MoltenDelete<CR>', { silent = true, desc = 'Molten: Delete cell' })
        
        -- Automatically open output when available
        vim.api.nvim_create_autocmd("User", {
            pattern = "MoltenInitPost",
            callback = function()
                vim.notify("Molten kernel initialized!", vim.log.levels.INFO)
            end,
        })
        
        -- Optional: Highlight groups for better visibility
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "*",
            callback = function()
                vim.api.nvim_set_hl(0, 'MoltenOutputBorder', { link = 'Normal' })
                vim.api.nvim_set_hl(0, 'MoltenOutputBorderFail', { link = 'ErrorMsg' })
                vim.api.nvim_set_hl(0, 'MoltenOutputBorderSuccess', { link = 'DiffAdd' })
            end,
        })
    end,
}
