return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects"
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            highlight = {enable = true},
            indent = {enable = false},
            fold = {enable = true},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<bs>",
                    node_incremental = "<bs>",
                    node_decremental = "<S-bs>",
                    scope_incremental = false
                }
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@conditional.outer",
                        ["ic"] = "@conditional.inner",
                        ["al"] = "@loop.outer",
                        ["il"] = "@loop.inner",
                        ["ae"] = "@class.outer",
                        ["ie"] = "@class.inner"
                    }
                }
            }
        })
    end
}
