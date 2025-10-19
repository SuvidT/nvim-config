
-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Core
require("core.options")
require("core.autocmds")
require("core.keymaps")


-- Plugins
require("lazy").setup({
    require("plugins.tokyonight"),
    require("plugins.treesitter"),
    require("plugins.cmp"),
    require("plugins.lsp"),
    require("plugins.telescope"),
    require("plugins.gitsigns"),
    require("plugins.whichkey"),
    require("plugins.autopairs"),
    require("plugins.dap"),
    require("plugins.comment"),
    require("plugins.jupynium"),
})
