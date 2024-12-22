return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            theme = "auto"
        },
        sections = {
            lualine_b = {{"tabs", mode = 1}},
            lualine_c = {}
        }
    }
}
