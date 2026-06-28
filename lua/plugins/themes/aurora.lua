return -- lazy
{
  "ray-x/aurora",
  init = function()
    vim.g.aurora_italic = 1
    vim.g.aurora_transparent = o
    vim.g.aurora_bold = 1
  end,
  config = function()
    -- vim.cmd.colorscheme "aurora"
    -- override defaults
    vim.api.nvim_set_hl(0, "@number", { fg = "#e933e3" })
  end,
}
