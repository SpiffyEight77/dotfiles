return {
  -- alpha-nvim
  {
    "goolord/alpha-nvim",
    config = function()
      require "config.alpha"
    end,
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  -- nvim-web-devicons
  "nvim-tree/nvim-web-devicons",

  -- telescope.nvim
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  -- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- indent-blankline.nvim
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- gitsigns.nvim
  "lewis6991/gitsigns.nvim",

  -- mason-lspconfig.nvim
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "gopls", "lua_ls", "buf_ls", "html", "ts_ls", "yamlls" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  -- nvim-cmp
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  -- vim-bbye
  "moll/vim-bbye",

  -- none-ls.nvim
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- nvim-autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },

  -- neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  -- rose-pine/neovim
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        variant = "moon",
        dark_variant = "moon",
        highlight_groups = {
          Search = { fg = "#e0def4", bg = "#56526e" },
        },
      }
    end,
  },

  -- github/copilot.vim
  {
    "github/copilot.vim",
  },
}
