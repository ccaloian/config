return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "catppuccin"
            }
        })
        -- require("transparent").clear_prefix("lualine")
    end
}
