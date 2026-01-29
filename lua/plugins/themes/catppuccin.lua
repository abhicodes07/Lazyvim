return {
  "catppuccin/nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      flavour = "mocha",
      background = { -- :h background
        light = "mocha",
        dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      float = { -- transparent color for floating windows
        transparent = true,
        solid = false,
      },
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },

      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = { "bold", "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = { "italic" },
        properties = {},
        types = { "bold" },
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },

      lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
          ok = { "italic" },
        },
        underlines = {
          errors = { "undercurl" },
          hints = { "underdotted" },
          warnings = { "underdotted" },
          information = { "underdotted" },
          ok = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },

      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        telescope = {
          enabled = true,
        },
        lsp_trouble = true,
        flash = true,
        blink_cmp = {
          style = "bordered",
        },
        blink_indent = true,
        neotree = true,
        noice = true,
        nvim_surround = true,
        render_markdown = true,
        snacks = {
          enabled = true,
          indent_scope_color = "",
        },
        trouble = true,
        which_key = true,
        mason = true,
      },
    }
  end,
}
