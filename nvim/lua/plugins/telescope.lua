return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = {"nvim-lua/plenary.nvim"},
        opts = {
            defaults = { file_ignore_patterns = {"env", "__pycache__"} }
        }
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        opts = {
            extensions = {
                ["ui-select"] = {require("telescope.themes").get_dropdown{}}
            }
        },
        config = function()
            require("telescope").load_extension("ui-select")
        end
    }
}
