-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--  Other symbols: tab:↦\\ ,extends:>,precedes:<,space:·,lead:‹,trail:›
vim.opt.list = true
vim.opt.listchars = { tab = "» ", lead = "·", trail = "·", nbsp = "␣", eol = "↵" }

-- Set highlight on search
vim.opt.hlsearch = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menuone", "noselect" }

-- NOTE: You should make sure your terminal supports this
vim.opt.termguicolors = true

-- Global status line
vim.opt.laststatus = 3

-- Set winbar to show filename
vim.opt.winbar = "%=%m %f"

-- Global options
vim.g.mapleader = " "
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Window options
vim.wo.number = true
vim.wo.relativenumber = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Make line numbers default
vim.wo.number = true

-- Basic movement keybinds, these make navigating splits easier
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Move to split left" })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Move to split down" })
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Move to split up" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Move to split right" })

-- Clear search highlighting when pressing <Esc>
-- alternatively you can run `:let @/ = ""` to clear search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true, desc = "Clear search highlighting" })

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
