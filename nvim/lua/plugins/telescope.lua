return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        "nvim-tree/nvim-web-devicons"
    },
    branch = "0.1.x",
    config = function ()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {"node_modules", "__pycache__", "env", "%.otf", "%.ttf", "%.dat", "%.png", "%.jpg", "%.webp", "build/"}
            }
        })
        vim.keymap.set("n", "<C- >", require("telescope.builtin").find_files)
    end
}
