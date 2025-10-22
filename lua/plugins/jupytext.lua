
return {
  "GCBallesteros/jupytext.nvim",
  lazy = false,
  config = function()
    require("jupytext").setup({
      style = "percent",          -- use the # %% cell format
      output_extension = "py",    -- sync .ipynb ↔ .py
      force_ft = "python",        -- make sure Neovim treats as Python
    })
  end,
}
