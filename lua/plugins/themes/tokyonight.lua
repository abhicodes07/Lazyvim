return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    styles = {
      keywords = { bold = true, italic = true },
      functions = { italic = true },
      floats = "normal",
    },
    lualine_bold = true,
    plugins = {
      notify = true,
      blink = true,
    },
  },
}
