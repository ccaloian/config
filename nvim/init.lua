-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- install Lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- load options and plugins
require("vim-options")
require("lazy").setup("plugins", {
	rocks = {
		enabled = true,
		hererocks = false,
	},
})

vim.env.PATH = vim.env.HOME .. "/.nvm/versions/node/v22.22.2/bin:" .. vim.env.PATH

-- vim.opt.rtp:append(vim.fn.stdpath("config") .. "/nvim-lspconfig")
-- vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason.nvim")
-- vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason-lspconfig.nvim")
--
-- -- Add the same capabilities to ALL server configurations.
-- -- Refer to :h vim.lsp.config() for more information.
-- vim.lsp.config("*", {
--   capabilities = vim.lsp.protocol.make_client_capabilities()
-- })
--
-- require("mason").setup()
-- require("mason-lspconfig").setup {
--   ensure_installed = { "rust_analyzer", "lua_ls" }
-- }
