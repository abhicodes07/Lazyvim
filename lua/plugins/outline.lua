return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    -- Your setup opts here
    outline_window = {
      position = "right",
      split_command = "belowright",
    },

    guides = {
      markers = {
        bottom = "╰",
      },
    },

    symbol_folding = {
      markers = { "", "" },
    },

    symbols = {
      icons = {
        File = { icon = "", hl = "Identifier" },
        Number = { icon = "", hl = "Number" },
        Key = { icon = "󰷖", hl = "Type" },
        Null = { icon = "󰟢", hl = "Type" },
        Operator = { icon = "", hl = "Identifier" },
        Constructor = { icon = "󱁤", hl = "Special" },
      },
    },
  },
}
