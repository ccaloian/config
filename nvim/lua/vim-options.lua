vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")

vim.g.mapleader= " "

vim.wo.number = true
vim.wo.relativenumber = true

-- Basic movement keybinds, these make navigating splits easier
vim.keymap.set("n", "<c-j>", "<c-w><c-j>", { desc = "Move to split down" })
vim.keymap.set("n", "<c-k>", "<c-w><c-k>", { desc = "Move to split up" })
vim.keymap.set("n", "<c-l>", "<c-w><c-l>", { desc = "Move to split right" })
vim.keymap.set("n", "<c-h>", "<c-w><c-h>", { desc = "Move to split left" })

