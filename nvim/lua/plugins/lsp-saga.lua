return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({
            lightbulb = {
                enable = false,
                enable_in_insert = false,
            }
        })
		vim.keymap.set("n", "<leader>lo", ":Lspsaga outline<CR>", { desc = "[L]spsaga [O]utline" })
		vim.keymap.set("n", "<leader>lt", ":Lspsaga term_toggle<CR>", { desc = "[L]spsaga [T]erminal" })
	end,
}
