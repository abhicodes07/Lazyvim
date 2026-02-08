-- which key
return {
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
}
