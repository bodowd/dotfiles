-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- colorthemes
	use("folke/tokyonight.nvim")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("nvim-lua/plenary.nvim") -- Common utilities

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use("simrat39/rust-tools.nvim")

	use("stevearc/conform.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("nvim-telescope/telescope.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})
	use("lewis6991/gitsigns.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	use("ThePrimeagen/harpoon")

	use("kyazdani42/nvim-web-devicons") -- File icons for telescope browswer
	-- use("onsails/lspkind-nvim") -- VSCode like pictograms

	use("numToStr/Comment.nvim")

	use("folke/todo-comments.nvim")
end)
