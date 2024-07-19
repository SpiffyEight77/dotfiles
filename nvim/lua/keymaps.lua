-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- define common options
local opt = {
  noremap = true, -- non-recursive
  silent = true, -- do not show message
}

-- lacal variable
local map = vim.api.nvim_set_keymap

-----------------
-- Normal mode --
-----------------

-- scroll fast
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)
map("n", "H", "5h", opt)
map("n", "L", "5l", opt)

-- exit from normal mode
map("n", "<leader>q", ":qa!<CR>", opt)

-----------------
-- Visual mode --
-----------------

-- scroll fast
map("v", "J", "5j", opt)
map("v", "K", "5k", opt)
map("v", "H", "5h", opt)
map("v", "L", "5l", opt)

-- move selected text
map("v", "w", ":move '<-2<CR>gv-gv", opt)
map("v", "s", ":move '>+1<CR>gv-gv", opt)

-----------------
-- Insert mode --
-----------------

map("i", "<C-a>", "<ESC>I", opt) -- jump to the beginning of the line.
map("i", "<C-e>", "<ESC>A", opt) -- jump to the end of the line.

-- exit from insert mode
map("i", "jk", "<ESC>", opt)

-- save file in insert mode.
map("i", "<C-s>", "<ESC>:w<CR>", opt)

------------------
-- Extensions --
-----------------

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-g>", ":Telescope live_grep<CR>", opt)

-- Bufferline
map("n", "P", ":BufferLineCyclePrev<CR>", opt)
map("n", "N", ":BufferLineCycleNext<CR>", opt)

-- vim-bbye
map("n", "<C-c>", ":Bdelete!<CR>", opt)

-- null-ls
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opt)

-- zenmode
map("n", "<leader>z", ":ZenMode<CR>", opt)

--neo-tree
map("n", "<C-n>", ":Neotree toggle<CR>", opt)
map("n", "<C-f>", ":Neotree filesystem reveal_force_cwd<CR>", opt)
map("n", "=", ":vertical 1resize +10<CR>", opt)
map("n", "-", ":vertical 1resize -10<CR>", opt)

-- lsp reference
map("n", "cc", ":cclose<CR>", opt)
