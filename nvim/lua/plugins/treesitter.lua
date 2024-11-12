return {
    "nvim-treesitter/nvim-treesitter",
    build= ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- auto_install = true,
            ensure_installed = {
                "bash",
                "c",
                "cmake",
                "cpp",
                "cuda",
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
    end
}

