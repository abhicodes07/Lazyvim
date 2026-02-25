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
        bottom = "╰╴",
        middle = "├╴",
      },
    },

    symbol_folding = {
      autofold_depth = false,
      markers = { "", "" },
    },

    symbols = {
      icons = {
        File = { icon = " ", hl = "Identifier" },
        Number = { icon = " ", hl = "Number" },
        Key = { icon = " ", hl = "Type" },
        Null = { icon = "󰟢 ", hl = "Type" },
        Operator = { icon = " ", hl = "Identifier" },
        Constructor = { icon = " ", hl = "Special" },
        Module = { icon = " ", hl = "Include" },
        Namespace = { icon = "󰦮 ", hl = "Include" },
        Package = { icon = " ", hl = "Include" },
        Class = { icon = " ", hl = "Type" },
        Method = { icon = "ƒ ", hl = "Function" },
        Property = { icon = " ", hl = "Identifier" },
        Field = { icon = " ", hl = "Identifier" },
        Enum = { icon = " ", hl = "Type" },
        EnumMember = { icon = " ", hl = "Identifier" },
        Interface = { icon = " ", hl = "Type" },
        Function = { icon = "ƒ ", hl = "Function" },
        Variable = { icon = "󰀫 ", hl = "Constant" },
        Constant = { icon = " ", hl = "Constant" },
        String = { icon = " ", hl = "String" },
        Boolean = { icon = "󰨙 ", hl = "Boolean" },
        Array = { icon = " ", hl = "Constant" },
        Object = { icon = " ", hl = "Type" },
        Struct = { icon = "󰆼 ", hl = "Structure" },
        Event = { icon = " ", hl = "Type" },
        TypeParameter = { icon = " ", hl = "Identifier" },
        Component = { icon = "󰅴 ", hl = "Function" },
        Fragment = { icon = "󰅴 ", hl = "Constant" },
        TypeAlias = { icon = " ", hl = "Type" },
        Parameter = { icon = " ", hl = "Identifier" },
        StaticMethod = { icon = " ", hl = "Function" },
        Macro = { icon = " ", hl = "Function" },
      },
    },
  },
}
