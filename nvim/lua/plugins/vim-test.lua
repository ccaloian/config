return {
    dependencies = {
        "preservim/vimux",
    },
    "vim-test/vim-test",
    vim.keymap.set("n", "<leader>tn" ,":TestNearest<CR>", { desc = "Run nearest test" }),
    vim.keymap.set("n", "<leader>tf" ,":TestFile<CR>", { desc = "Run all tests in file" }),
    vim.keymap.set("n", "<leader>ts" ,":TestSuite<CR>", { desc = "Run all tests in suite" }),
    vim.keymap.set("n", "<leader>tl" ,":TestLast<CR>", { desc = "Run last test" }),
    vim.keymap.set("n", "<leader>tv" ,":TestVisit<CR>", { desc = "Visit test file" }),
    vim.cmd("let test#strategy = 'vimux'"),
}
