vim.o.number = true
vim.o.relativenumber = false
vim.o.autoindent = true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.smarttab = true
vim.o.softtabstop=4
vim.o.mouse=a
vim.o.cursorline=true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- MISC
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.5',
		dependencies = "nvim-lua/plenary.nvim"
	},
	"zbirenbaum/copilot.lua",
	{
		"zbirenbaum/copilot-cmp",
		config = function ()
			require("copilot_cmp").setup()
		end
	},
	"nvim-treesitter/nvim-treesitter",
	"folke/tokyonight.nvim",
	"goolord/alpha-nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/gitsigns.nvim",
	"nvim-lualine/lualine.nvim",
	"akinsho/bufferline.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"moll/vim-bbye",
	"lukas-reineke/indent-blankline.nvim",
	-- CMP
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	-- LSP
	"akinsho/toggleterm.nvim",
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"RRethy/vim-illuminate"
})

-- Choose theme (tokyonight)
vim.cmd.colorscheme "tokyonight-night"

require "sapir.nvim_tree"
require "sapir.telescope"
require "sapir.treesitter"
require "sapir.alpha"
require "sapir.gitsigns"
require "sapir.project"
require "sapir.whichkey"
require "sapir.keymaps"
require "sapir.toggleterm"
require "sapir.cmp"
require "sapir.lsp"
require "sapir.lualine"
require "sapir.bufferline"
require "sapir.autopairs"
require("copilot").setup();

-- Set mouse as a
vim.o.mouse = "a"
