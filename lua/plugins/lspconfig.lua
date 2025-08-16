return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        local lspconfig = require("lspconfig")

        local servers = {
            "lua_ls",
            "clangd",
            "pyright",
            "marksman",
        }

        for _, server in ipairs(servers) do
            lspconfig[server].setup({})
        end
    end,
}
