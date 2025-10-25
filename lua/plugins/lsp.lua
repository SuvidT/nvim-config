return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Setup mason first
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "clangd", "lua_ls" },
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, silent = true }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    -- FIXED: Use lspconfig.SERVER.setup() instead of vim.lsp.config()
    lspconfig.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.clangd.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.lua_ls.setup({
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
  end,
}
