
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch-stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keymaps")
require("core.autocmds")

vim.o.background = "dark"

require("lazy").setup({
    -- colorschemes: github themes, tokyonight
    require("plugins.github-theme"),
    require("plugins.tokyonight"),
    require("plugins.kanagawa"),

    -- langauge
    require("plugins.lsp"),
    require("plugins.cmp"),
    require("plugins.treesitter"),
    require("plugins.dap"),
    require("plugins.autopairs"),

    -- quaility of life
    require("plugins.gitsigns"),
    require("plugins.telescope"),
    require("plugins.which-key"),

    -- jupyter notebooks
    require("plugins.molten"),
    require("plugins.image"),
    require("plugins.jupytext")
})

vim.cmd("colorscheme kanagawa-dragon")
