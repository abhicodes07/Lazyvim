return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
    keys = {
      {
        "<leader>snl",
        function()
          require("noice").cmd("snacks")
        end,
        desc = "Noice Last Message",
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade_in_slide_out",
      timeout = 5000,
    },
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icons = false,
      },
    },
  },

  -- which key
  {
    "folke/which-key.nvim",
    opts = {
      preset = "helix", -- Values : helix, classic, modern
      defaults = {},
      spec = {
        {
          mode = { "n", "x" },
          { "<leader>", group = "Leader" },
          { "<leader>t", group = "Toggle term" },
          { "<leader>o", group = "Toggle outlines" },
          { "<leader>sf", group = "File browser" },
          { ";", group = "Telescope" },
        },
      },
    },
  },

  -- mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "lua-language-server",
        "ruff",
        "clangd",
        "pyright",
        "html-lsp",
        "djlint",
        "django-template-lsp",
      },
      ui = {
        border = "rounded",
        icons = {
          package_pending = " ",
          package_installed = " ",
          package_uninstalled = "󰚌",
        },
      },
    },
  },
}
