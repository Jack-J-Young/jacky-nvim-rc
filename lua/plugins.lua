-- This file can be loaded by calling `lua require('plugins')` from your init.vim



-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
	}

	use "ellisonleao/gruvbox.nvim"

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use 'nvim-treesitter/playground'

	use {
		"cbochs/grapple.nvim",
    		requires = { "nvim-lua/plenary.nvim" },
	}

	use 'mbbill/undotree'


	use 'tpope/vim-fugitive'

	use 'rust-lang/rust.vim'
	use 'simrat39/rust-tools.nvim'

	--use {
	--	'VonHeikemen/lsp-zero.nvim',
	--	branch = 'v2.x',
	--	requires = {
	--		-- LSP Support
	--		{'neovim/nvim-lspconfig'},             -- Required
	--		{'williamboman/mason.nvim'},           -- Optional
	--		{'williamboman/mason-lspconfig.nvim'}, -- Optional
    --
	--		-- Autocompletion
	--		{'hrsh7th/nvim-cmp'},     -- Required
	--		{'hrsh7th/cmp-nvim-lsp'}, -- Required
	--		{'L3MON4D3/LuaSnip'},     -- Required
	--	}
	--}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
	}

	use 'williamboman/mason.nvim'

	use 'williamboman/mason-lspconfig.nvim'

	use {
		'neovim/nvim-lspconfig',
		requires = {
			'hrsh7th/cmp-nvim-lsp'
		}
	}

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip'
		}
	}

	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				api_key_cmd = "pass show chat_gpt/key",
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	})


	use 'nvim-lua/plenary.nvim'
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

end)
