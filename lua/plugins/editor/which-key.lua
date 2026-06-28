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
        { "<leader>d", group = "Debug", nowait = true, remap = false },
        {
          "<leader>dt",
          function()
            require("dap").toggle_breakpoint()
          end,
          desc = "Toggle Breakpoint",
          nowait = true,
          remap = false,
        },
        {
          "<leader>dc",
          function()
            require("dap").contine()
          end,
          desc = "Contine",
          nowait = true,
          remap = false,
        },
        {
          "<leader>di",
          function()
            require("dap").step_into()
          end,
          desc = "Step Into",
          nowait = true,
          remap = false,
        },
        {
          "<leader>do",
          function()
            require("dap").step_over()
          end,
          desc = "Step Over",
          nowait = true,
          remap = false,
        },
        {
          "<leader>du",
          function()
            require("dap").step_out()
          end,
          desc = "Step Out",
          nowait = true,
          remap = false,
        },
        {
          "<leader>dl",
          function()
            require("dap").run_last()
          end,
          desc = "Run Last",
          nowait = true,
          remap = false,
        },
        {
          "<leader>dq",
          function()
            require("dap").terminate()
            require("dapui").close()
            require("nvim-dap-virtual-text").toggle()
          end,
          desc = "Terminate",
          nowait = true,
          remap = false,
        },
        {
          "<leader>db",
          function()
            require("dap").list_breakpoints()
          end,
          desc = "List Breakpoints",
          nowait = true,
          remap = false,
        },
        {
          "<leader>de",
          function()
            require("dap").set_exception_breakpoints({ "all" })
          end,
          desc = "Set Exception Breakpoints",
          nowait = true,
          remap = false,
        },
      },
    },
  },
}
