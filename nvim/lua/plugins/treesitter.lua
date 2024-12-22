return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                highlight = {enabled = true},
                indent = {enabled = true},
                fold = {enable = true},
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>ss",
                        node_decremental = "<Leader>sd",
                        scope_incremental = "<Leader>sc",
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
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects"
    }
}
