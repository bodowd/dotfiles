-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorthemes
    use 'folke/tokyonight.nvim'
    -- use 'tjdevries/colorbuddy.nvim'
    --    use {
    --        'svrana/neosolarized.nvim',
    --        requires = { 'tjdevries/colorbuddy.nvim' }
    --    }

    use 'feline-nvim/feline.nvim' -- Status line

    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'L3MON4D3/LuaSnip'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig' -- LSP
    use 'jose-elias-alvarez/null-ls.nvim' -- Use nvim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use 'glepnir/lspsaga.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'kyazdani42/nvim-web-devicons' -- File icons for telescope browswer
    use 'onsails/lspkind-nvim' -- VSCode like pictograms

    use 'lewis6991/gitsigns.nvim'
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use 'numToStr/Comment.nvim'
end)
