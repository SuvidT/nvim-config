

return {
    "projekt0n/github-nvim-theme",

    config = function()
        require("github-theme").setup()

        -- Set the colorscheme
        vim.cmd("colorscheme github_dark_default")  -- or 'github_light' for the light theme
    end,
}
