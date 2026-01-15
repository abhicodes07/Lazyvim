return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "html", "python", "jinja", "htmldjango", "jinja_inline", "git_config", "gitattributes", "cpp" }, -- Add jinja2
    highlight = { enable = true },
  },
}
