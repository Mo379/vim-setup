-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "nvim-lua/plenary.nvim" }
	use { "ThePrimeagen/harpoon" }
	use { "mbbill/undotree" }
	use { "tpope/vim-fugitive" }

	use { "rose-pine/neovim", name = "rose-pine" }
	use { "ellisonleao/gruvbox.nvim" }
	use { "tiagovla/tokyodark.nvim" }

	vim.cmd("colorscheme tokyodark")

	use {
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},
			{'rafamadriz/friendly-snippets'}
		}
	}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use {
	    "folke/trouble.nvim",
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use {
      'kkoomen/vim-doge',
      run = ':call doge#install()'
    }
    use "airblade/vim-gitgutter"
    use "lukas-reineke/indent-blankline.nvim"
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
end)
