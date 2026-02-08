return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        last_indent_marker = "╰╴",
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          added = "", -- NOTE: you can set any of these to an empty string to not show them
          deleted = "",
          modified = "",
          renamed = "󰑕",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
        },
      },
      icon = {
        folder_open = "",
        folder_closed = "",
        folder_empty = "",
      },
    },
  },
}
