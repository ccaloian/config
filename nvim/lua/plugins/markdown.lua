return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    -- You need to run ":Lazy build markdown-preview.nvim" to install the plugin
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
	keys = {
		{ "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "MarkdownPreview" },
		{ "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "MarkdownPreviewToggle" },
	},
}
