vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'crusoexia/vim-monokai'
	use 'ErichDonGubler/vim-sublime-monokai'
	use ({
			'scrooloose/nerdtree', { run = ':NERDTreeToggle' }
		})
	use ({
			'junegunn/fzf', { run = ':yes | ./install' }
		})
	use 'junegunn/fzf.vim'
	use 'mfussenegger/nvim-lint'
	use 'mkitt/tabline.vim'
	use 'nvie/vim-flake8'
	use 'psf/black'
	use 'jiangmiao/auto-pairs'
	use 'michamos/vim-bepo'
	use 'sheerun/vim-polyglot'
	use 'ryanoasis/vim-devicons'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
	use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
		})
	use({
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	})
end)
