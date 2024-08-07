require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "lua", "go", "html", "javascript", "query", "vimdoc" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
