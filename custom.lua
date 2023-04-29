return {
	{ "catppuccin/nvim" },
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jk", "jj" },
				clear_empty_lines = false,
				keys = "<Esc>",
			})
		end,
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
}
