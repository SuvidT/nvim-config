return {
    '3rd/image.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'vhyrro/luarocks.nvim'  -- Optional dependency for luarocks
    },
    config = function()
      require('image').setup({
        backend = 'kitty',  -- Kitty backend for image display
        -- processor = "magic_cli",
        max_width = 100,
        max_height = 12,
        max_height_window_percentage = 50,
        max_width_window_percentage = 50,
        kitty_method = 'normal',
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
          },
          neorg = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
          },
        }
      })
    end,
}
