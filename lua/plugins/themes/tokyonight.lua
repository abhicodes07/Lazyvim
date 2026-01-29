return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    styles = {
      keywords = { bold = true, italic = true },
      functions = { bold = true },
      classes = { italic = true },
      constants = { bold = true },
      types = { italic = true },
      conditionals = { italic = true },
      loops = {},
      booleans = { italic = true },
      properties = {},
      operators = {},
      floats = "normal",
    },
    lualine_bold = true,
    plugins = {
      notify = true,
      blink = true,
    },
  },
}
