-- configure globl vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader= " "
vim.wo.number = true
vim.wo.relativenumber = true


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

local opts = {}
local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "nvim-telescope/telescope.nvim", tag = "0.1.8",
        dependencies = "nvim-lua/plenary.nvim"
    },
    {"nvim-treesitter/nvim-treesitter", build= ":TSUpdate"}
}

require("lazy").setup(plugins, opts)

-- require catppuccin plugin
require("catppuccin").setup()

-- set the colorscheme
vim.cmd.colorscheme "catppuccin"

-- require and configure telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- require and configure treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "gomod",
        "gotmpl",
        "gowork",
        "java",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "rust",
        "scala",
        "sql",
        "toml",
        "typescript",
        "vim",
        "yaml",
    },
    highlight = { enable = true },
    indent = { enable = true }
})

