-- Options
require "options"

-- Keybindings
require "keymaps"

-- lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  install = {
    missing = true,
    colorscheme = { "rose-pine" },
  },
})

-- Colorscheme
require "colorscheme"

-- Plugin setting
require "config.lualine"
require "config.bufferline"
require "config.nvim-treesitter"
require "config.indent_blankline"
require "config.gitsigns"
require "config.nvim-cmp"
require "config.null-ls"

-- LSP
require "lsp"
