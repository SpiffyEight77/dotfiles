 -- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- display left icon to indicate column
 vim.wo.signcolumn = "yes"

-- right reference line
vim.wo.colorcolumn = "80"

-- two spaces equal one tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << move two spaces
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- replace space with tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- align new lines with current line
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- search is case-insensitive
vim.o.ignorecase = true
vim.o.smartcase = true

-- search with no highlight
vim.o.hlsearch = false

-- search while typing
vim.o.incsearch = true

-- the command line has a height of two
vim.o.cmdheight = 1

-- auto reload files
vim.o.autoread = true
vim.bo.autoread = true

-- no line wrapping
vim.wo.wrap = false

-- when the cursor is at the beginning or end of a line, <Left><Right> can jump to the next line
vim.o.whichwrap = "<,>,[,]"

-- allow hiding modified buffers
vim.o.hidden = true

-- mouse support
vim.o.mouse = "a"

-- disable backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- set timeoutlen to wait for keyboard shortcut combo time of 500 milliseconds
-- detail：https://github.com/nshen/learn-neovim-lua/issues/1
vim.o.timeoutlen = 500

-- split window from bottom and right
vim.o.splitbelow = true
vim.o.splitright = true

-- autocomplete does not automatically select
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- style
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- display invisible characters or not
vim.o.list = false

-- the display of invisible characters, here only displays spaces as a dot
vim.o.listchars = "space:·,tab:··"

-- enhanced completion
vim.o.wildmenu = true

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- complete up to 10 lines of display
vim.o.pumheight = 10

-- always display tabline
vim.o.showtabline = 2

-- after using the enhanced status bar plugin, there is no longer a need for Vim's mode prompt
vim.o.showmode = false

-- pastboard configuration
vim.opt.clipboard = "unnamedplus" 

vim.o.termguicolors = true

