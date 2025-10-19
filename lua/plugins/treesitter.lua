
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "python", "c", "go", "zig", "lua", "markdown", "markdown_inline" },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    }
}
