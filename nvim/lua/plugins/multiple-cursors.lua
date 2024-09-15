return {
	"brenton-leighton/multiple-cursors.nvim",
	version = "*", -- Use the latest tagged version
	opts = { -- This causes the plugin setup function to be called
        custom_key_maps = {
            -- remap comment keybindings
            {{"n", "i"}, "<C-/>", function() vim.cmd("normal gcc") end},
            {"v", "<C-/>", function() vim.cmd("normal gc") end},
        },
        pre_hook = function()
            require("nvim-autopairs").disable()
            require("cmp").setup({enabled=false})
        end,
        post_hook = function()
            require("nvim-autopairs").enable()
            require("cmp").setup({enabled=true})
        end,
    },
    keys = {
		{
			"<A-j>",
			"<Cmd>MultipleCursorsAddDown<CR>",
			mode = { "n", "x" },
			desc = "Add cursor and move down",
		},
		{
			"<A-k>",
			"<Cmd>MultipleCursorsAddUp<CR>",
			mode = { "n", "x" },
			desc = "Add cursor and move up",
		},

		{
			"<A-Up>",
			"<Cmd>MultipleCursorsAddUp<CR>",
			mode = { "n", "i", "x" },
			desc = "Add cursor and move up",
		},
		{
			"<A-Down>",
			"<Cmd>MultipleCursorsAddDown<CR>",
			mode = { "n", "i", "x" },
			desc = "Add cursor and move down",
		},

		{
			"<A-LeftMouse>",
			"<Cmd>MultipleCursorsMouseAddDelete<CR>",
			mode = { "n", "i" },
			desc = "Add or remove cursor",
		},

		{
			"<Leader>a",
			"<Cmd>MultipleCursorsAddMatches<CR>",
			mode = { "n", "x" },
			desc = "Add cursors to cword",
		},
		{
			"<Leader>A",
			"<Cmd>MultipleCursorsAddMatchesV<CR>",
			mode = { "n", "x" },
			desc = "Add cursors to cword in previous area",
		},

		{
			"<Leader>d",
			"<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
			mode = { "n", "x" },
			desc = "Add cursor and jump to next cword",
		},
		{
			"<Leader>D",
			"<Cmd>MultipleCursorsJumpNextMatch<CR>",
			mode = { "n", "x" },
			desc = "Jump to next cword",
		},

		{
			"<Leader>l",
			"<Cmd>MultipleCursorsLock<CR>",
			mode = { "n", "x" },
			desc = "Lock virtual cursors",
		},
	},
}
