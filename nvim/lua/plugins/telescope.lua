return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        "nvim-tree/nvim-web-devicons"
    },
    branch = "0.1.x",
    opts = {
        defaults = {
            file_ignore_patterns = {"env", "__pycache__"},
            path_display = {"smart"}
        },
        extensions = {fzf = {}}
    },
    config = function ()
        local telescope = require("telescope")
        telescope.load_extension("fzf")
        vim.keymap.set("n", "<C- >", require("telescope.builtin").find_files)
    end
}
