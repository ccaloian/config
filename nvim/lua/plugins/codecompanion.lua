return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	interactions = {
		chat = {
			adapter = {
				name = "anthropic",
				model = "sonnet-4.6",
			},
		},
		inline = {
			adapter = {
				name = "anthropic",
				model = "sonnet-4.6",
			},
		},
		cmd = {
			adapter = {
				name = "anthropic",
				model = "sonnet-4.6",
			},
		},
		background = {
			adapter = {
				name = "anthropic",
				model = "sonnet-4.6",
			},
		},
	},
	opts = {
		-- NOTE: The log_level is in `opts.opts`
		opts = {
			log_level = "DEBUG", -- or "TRACE"
		},
	},
}
