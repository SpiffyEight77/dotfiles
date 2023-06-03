-- Options
require('options')

-- Keybindings
require("keymaps")

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
	install = {
		-- install missing plugins on startup. This doesn't increase startup time.
		missing = true,
		-- try to load one of these colorschemes when starting an installation during startup
		colorscheme = { "tokyonight" },
	},
})

-- Colorscheme
require("colorscheme")

-- Plugin setting
require("config.lualine")
require("config.bufferline")
require("config.nvim-tree")
require("config.nvim-treesitter")
require("config.indent_blankline")
require("config.gitsigns")
require("config.nvim-cmp")
require("config.null-ls")

-- LSP
require("lsp")
