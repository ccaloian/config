return {
    "christoomey/vim-tmux-navigator",
    vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>", { desc = "Move to split left" }),
    vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>", { desc = "Move to split down" }),
    vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>", { desc = "Move to split up" }),
    vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>", { desc = "Move to split right" }),
}
