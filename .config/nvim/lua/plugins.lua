-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Speedup loading time
	use("lewis6991/impatient.nvim")

	-- Autocomplete
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")

	-- Language server manager
	use("williamboman/mason.nvim")

	-- Language server integrations
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use("onsails/lspkind.nvim")
	use({
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig",
	})

	use("simrat39/rust-tools.nvim")
	-- Debugging
	use("nvim-lua/plenary.nvim")
	use("mfussenegger/nvim-dap")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Vesion control
	use("lewis6991/gitsigns.nvim")
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- UI
	use("lukas-reineke/indent-blankline.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	use("simrat39/symbols-outline.nvim")
	use("ellisonleao/glow.nvim")

	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	use("nvim-tree/nvim-web-devicons")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})

	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})

	use({
		"giusgad/pets.nvim",
		requires = {
			"giusgad/hologram.nvim",
			"MunifTanjim/nui.nvim",
		},
	})

	-- Window managemend
	use("famiu/bufdelete.nvim")
	use("mrjones2014/smart-splits.nvim")

	-- Themes
	use("rmehri01/onenord.nvim")
	use("folke/tokyonight.nvim")
	use("rebelot/kanagawa.nvim")

	-- Searching
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Text formatting
	use("mhartington/formatter.nvim")
	use("lewis6991/spaceless.nvim")

	-- Built-in terminal emulator
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- Enhanced keyboard mappings
	use("max397574/better-escape.nvim")

	-- Smart comments
	use("numToStr/Comment.nvim")

	-- Writing to system files
	use("lambdalisue/suda.vim")
end)
