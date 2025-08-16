
# My Neovim Configuration

This repo is for my current neovim configuration
The goals were:
- Minimalism, don't add anything I don't use
- Functionalism, have a leader mapping to every command I use

## File Management

- nvim
    init.lua
    lazy-lock.json
    .DS_Store
    - lua
        - core
            options.lua
            keymaps.lua
            autocmds.lua
        - plugins
            init.lua
            autopairs.lua
            lspconfig.lua
            mason-lspconfig.lua
            mason.lua
            treesitter.lua
            cmp.lua
            luasnip.lua
            whichkey.lua
