return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night", -- storm, moon, night
    transparent = false,
    styles = {
      keywords = { bold = true, italic = true },
      functions = { bold = true },
      classes = { italic = true },
      constants = { bold = true },
      types = { italic = true },
      conditionals = { italic = true, bold = true },
      loops = {},
      booleans = { italic = true },
      properties = {},
      operators = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      floats = "transparent",
      sidebars = "transparent",
    },
    lualine_bold = true,
    on_highlights = function(hl, c) end,
    plugins = {
      notify = true,
      blink = true,
    },
  },
}
