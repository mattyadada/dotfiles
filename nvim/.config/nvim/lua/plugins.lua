return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'joshdick/onedark.vim' --> one dark color theme
    use {'ellisonleao/gruvbox.nvim'} --> gruvbox color theme
    use 'arcticicestudio/nord-vim'
    use 'nvim-tree/nvim-web-devicons' --> nvim icons
    use 'nvim-lua/plenary.nvim'
    use 'voldikss/vim-floaterm'
    use 'lewis6991/impatient.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'EdTsft/vim-qrc'
    use 'fladson/vim-kitty'



    use {
        'nvim-tree/nvim-tree.lua',
        requires ='nvim-tree/nvim-web-devicons',  
        tag = 'nightly' }





     -- nvim file tree that includes devicons

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
	    'windwp/nvim-autopairs', 
        config = function() require('nvim-autopairs').setup {} end
    } -- auto close parenthesis

    use {
	 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' ,
    }
    

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}
    }

    use {
        'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate'
    }


    use{
        'williamboman/nvim-lsp-installer',
        'williamboman/mason-lspconfig.nvim',
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig', -- config for nvim lsp 
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'rafamadriz/friendly-snippets'
    } 

end)

