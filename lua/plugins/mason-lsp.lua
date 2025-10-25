return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig", -- Adding lspconfig back for compatibility
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "pyright", "clangd", "lua_ls", "gopls", "zls", "marksman" },
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

			-- Visual feedback that LSP attached
			print("LSP attached: " .. vim.lsp.get_clients({ bufnr = bufnr })[1].name)
		end

		-- Setup all servers
		local servers = { "pyright", "clangd", "lua_ls", "gopls", "zls", "marksman" }

		for _, server in ipairs(servers) do
			lspconfig[server].setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
		end
	end,
}
