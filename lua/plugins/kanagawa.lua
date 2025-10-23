return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      -- you can customize here
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      transparent = false,
      theme = "wave",          -- options: "wave" (default), "dragon", "lotus"
      background = {
        dark = "wave",
        light = "lotus",
      },
      -- optional overrides
      overrides = function(colors)
        return {
          -- e.g. disable italics for builtin variables
          ["@variable.builtin"] = { italic = false },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
