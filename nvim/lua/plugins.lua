local packer = require("packer")
packer.startup({
  function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- tokyonight
    use("folke/tokyonight.nvim")

    -- alpha-nvim
    use {
      'goolord/alpha-nvim',
      config = function ()
        require("config.alpha")
      end
    }

    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    --- nvim-tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons',
      },
      config = function()
        require("nvim-tree").setup {}
      end
    }

    --- nvim-web-devicons
    use 'nvim-tree/nvim-web-devicons'

    --- telescope.nvim
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- nvim-treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    --- indent-blankline.nvim
    use "lukas-reineke/indent-blankline.nvim"

    --- gitsigns.nvim
    use {
      'lewis6991/gitsigns.nvim',
    }

    --- mason.nvim
    use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

    --- mason-lspconfig.nvim
    use {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }

    --- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    --- vim-bbye
    use 'moll/vim-bbye'

    --- null-ls.nvim
    use 'nvim-lua/plenary.nvim'
    use({
      "jose-elias-alvarez/null-ls.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })

    --- nvim-autopairs
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }

  end,
  config = {
    max_jobs = 16,
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})

-- automatically install plugins when the plugins.lua file is saved
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
