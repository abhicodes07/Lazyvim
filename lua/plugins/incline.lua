-- Floating filename
return {
  "b0o/incline.nvim",
  dependencies = { "craftzdog/solarized-osaka.nvim" },
  event = "BufReadPre",
  priority = 1200,
  config = function()
    local colors = require("solarized-osaka.colors").setup()

    local function get_lualine_color(section)
      local ok, highlight = pcall(require, "lualine.highlight")
      if not ok then
        return nil
      end

      ---@diagnostic disable-next-line: redefined-local
      local section = section or "a"
      local mode_suffix = highlight.get_mode_suffix()
      local hl_name = "lualine_" .. section .. mode_suffix
      return highlight.get_lualine_hl(hl_name)
    end

    require("incline").setup({
      window = { margin = { vertical = 1, horizontal = 0 } },
      hide = {
        cursorline = true,
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        local modified = vim.bo[props.buf].modified
        local active = props.focused
        local helpers = require("incline.helpers")

        if modified then
          filename = filename .. " [+]"
        end

        -- dynamically set colors
        local lualine_color = get_lualine_color("a")
        local bg = lualine_color and lualine_color.bg or colors.base03
        local fg = lualine_color and lualine_color.fg or colors.violet500

        -- if not focused
        if not active then
          bg = "#313244"
          fg = "#cdd6f4"
        end

        return {
          icon and { " ", icon, " ", guibg = color, guifg = helpers.contrast_color(color) } or " ",
          { " " },
          { filename, gui = modified and "bold,italic" or "bold" },
          " ",
          guibg = bg,
          guifg = fg,
        }
      end,
    })

    -- Auto-refresh on mode change
    vim.api.nvim_create_autocmd({
      "ModeChanged",
      "CmdlineEnter",
      "CmdlineLeave",
      "WinEnter",
      "BufWinEnter",
    }, {
      callback = function()
        vim.schedule(function()
          require("incline").refresh()
        end)
      end,
    })
  end,
}
