local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugins.github_theme"),
    require("plugins.mason"),
    require("plugins.mason-lspconfig"),
    require("plugins.lspconfig"),
    require("plugins.treesitter"),
    require("plugins.cmp"),
    require("plugins.luasnip"),
    require("plugins.whichkey"),
    require("plugins.autopairs"),
})
