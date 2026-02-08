-- mason
return {
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
}
