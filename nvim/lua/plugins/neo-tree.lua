return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function ()
        require("neo-tree").setup({
            window = {
                position = "right",
                auto_expand_width = true,
                width = 30
            }
        })
        vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle<CR>", {silent = true})
    end
}
