return {
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		keys = function()
			local gitsigns = require("gitsigns")
			return {
				-- Hunks
				{ "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Git [p]review hunk" },
				{ "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Git [r]eset hunk" },
				{ "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Git [s]tage hunk" },
				{ "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Git [u]ndo stage hunk" },
				-- Visual hunks
				{
					"<leader>hs",
					mode = { "v" },
					function()
						gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end,
					desc = "stage git hunk",
				},
				{
					"<leader>hr",
					mode = { "v" },
					function()
						gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end,
					desc = "Stage git hunk",
				},
				-- Toggle
				{
					"<leader>tb",
					"<cmd>Gitsigns toggle_current_line_blame<cr>",
					desc = "[T]oggle git show [b]lame line",
				},
				{ "<leader>td", "<cmd>Gitsigns toggle_deleted<cr>", desc = "[T]oggle git show [d]eleted" },
			}
		end,
	},
}
