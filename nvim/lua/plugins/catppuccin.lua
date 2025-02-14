return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	opts = {
		term_colors = true,
		transparent_background = true,
		dim_inactive = {
			enabled = true,
			shade = "dark",
			percentage = 0.2,
		},
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
