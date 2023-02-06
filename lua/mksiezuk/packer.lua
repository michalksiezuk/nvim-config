local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

return require("packer").startup(function(use)

	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } }
	}

	use {
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd("colorscheme tokyonight-night")
		end
	}

	use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }

	use { "nvim-treesitter/playground" }

	use { "theprimeagen/harpoon" }

	use { "mbbill/undotree" }

	use { "tpope/vim-fugitive" }

	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },             -- Required
			{ "williamboman/mason.nvim" },           -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },         -- Required
			{ "hrsh7th/cmp-nvim-lsp" },     -- Required
			{ "hrsh7th/cmp-buffer" },       -- Optional
			{ "hrsh7th/cmp-path" },         -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" },     -- Optional

            -- Snippets
			{ "L3MON4D3/LuaSnip" },             -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		}
	}

	use { "williamboman/mason.nvim" }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    if packer_bootstrap then
	require('packer').sync()
    end

end)

