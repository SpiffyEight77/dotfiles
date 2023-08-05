return {
	-- tokyonight.nvim
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- alpha-nvim
	{
		'goolord/alpha-nvim',
		config = function()
			require("config.alpha")
		end
	},

	-- lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},

	-- bufferline
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	-- nvim-tree
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require("nvim-tree").setup {}
		end
	},

	-- nvim-web-devicons
	'nvim-tree/nvim-web-devicons',

	-- telescope.nvim
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},

	-- nvim-treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	},

	-- indent-blankline.nvim
	"lukas-reineke/indent-blankline.nvim",

	-- gitsigns.nvim
	'lewis6991/gitsigns.nvim',

	-- mason.nvim
	{
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	},

	-- mason-lspconfig.nvim
	{
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	-- nvim-cmp
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',

	-- vim-bbye
	'moll/vim-bbye',

	-- null-ls.nvim
	'nvim-lua/plenary.nvim',
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- nvim-autopairs
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},

	-- zen-mode.nvim
	{
		"folke/zen-mode.nvim",
	},
}
