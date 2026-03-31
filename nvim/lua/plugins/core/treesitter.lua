return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            init = function()
                vim.g.no_plugin_maps = true
            end,
            config = function()
                require("nvim-treesitter-textobjects").setup({
                    select = {lookahead = true}
                })
                local select_fn = require("nvim-treesitter-textobjects.select").select_textobject
                local keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@conditional.outer",
                    ["ic"] = "@conditional.inner",
                    ["al"] = "@loop.outer",
                    ["il"] = "@loop.inner",
                    ["ae"] = "@class.outer",
                    ["ie"] = "@class.inner"
                }
                for key, query in pairs(keymaps) do
                    vim.keymap.set({"x", "o"}, key, function() select_fn(query, "textobjects") end)
                end
            end
        }
    },
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {"*"},
            callback = function()
                local ok, _ = pcall(vim.treesitter.start)
                if ok then
                    vim.wo[0][0].foldmethod = "expr"
                    vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
                end
            end,
        })
    end
}
