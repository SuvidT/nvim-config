-- Create a helper function to define autocommands
local function augroup(name)
    return vim.api.nvim_create_augroup("my_" .. name, { clear = true })
end

-- Highlight text on yank (your request)
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
    end,
})

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup("trim_whitespace"),
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Enable spellcheck in markdown and gitcommit files
vim.api.nvim_create_autocmd("FileType", {
    group = augroup("spell_markdown"),
    pattern = { "gitcommit", "markdown" },
    callback = function()
        vim.opt_local.spell = true
    end,
})

-- Auto reload file if changed externally
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
    group = augroup("checktime"),
    pattern = "*",
    command = "checktime",
})

-- Resize splits when the window is resized
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup("resize_splits"),
    pattern = "*",
    command = "tabdo wincmd =",
})
