vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Check LSP status
vim.keymap.set("n", "<leader>li", function()
	local clients = vim.lsp.get_clients({ bufnr = 0 })
	if #clients == 0 then
		print("No LSP clients attached")
	else
		for _, client in ipairs(clients) do
			print("LSP: " .. client.name)
		end
	end
end, { desc = "LSP Info" })
