-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Icons set
require("nvim-web-devicons").get_icons();

-- setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	view = {
		width = 30,
	},
})
