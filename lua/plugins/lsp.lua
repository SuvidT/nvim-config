
return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright", "clangd", "gopls", "zls", "lua_ls" },
                automatic_installation = true,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function(_, bufnr)
                local opts = { buffer = bufnr }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            end

            -- Setup servers using vim.lsp.config
            vim.lsp.config("pyright", {
                capabilities = capabilities,
                on_attach = on_attach,
            })

            vim.lsp.config("clangd", {
                capabilities = capabilities,
                on_attach = on_attach,
            })

            vim.lsp.config("gopls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })

            vim.lsp.config("zls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })

            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            })

            -- Enable the servers
            vim.lsp.enable({ "pyright", "clangd", "gopls", "zls", "lua_ls" })
        end,
    },
}
