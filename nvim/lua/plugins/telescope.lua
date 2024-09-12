return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            local actions = require("telescope.actions")
            local builtin = require("telescope.builtin")
            local themes = require("telescope.themes")

            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-u>"] = false,
                            ["<C-d>"] = actions.delete_buffer,
                        },
                        n = {
                            ["<C-d>"] = actions.delete_buffer,
                        },
                    },
                },
            })

            vim.keymap.set("n", "<leader>/", function()
                builtin.current_buffer_fuzzy_find(themes.get_dropdown({
                    winblend = 10,
                    previewer = false,
                }))
            end, { desc = "[/] Fuzzily search in current buffer" })

            vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "[ ] Find existing buffers" })
            vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find recently [O]pened [F]iles" })
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G}rep" })
            vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search [G]it [F]iles" })
            vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
            vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
            vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
            vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
            vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
