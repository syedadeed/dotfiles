return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        {"williamboman/mason.nvim", opts = {}},
        "neovim/nvim-lspconfig"
    },
    config = function()
        require("mason-lspconfig").setup({
            function (server_name)
                local capabs = require("cmp_nvim_lsp").default_capabilities()
                require("lspconfig")[server_name].setup({capabilities = capabs})
            end,
            ["ts_ls"] = function ()
                require("lspconfig").ts_ls.setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    init_options = {preferences = {disableSuggestions = true}}
                })
            end
        })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set({"n", "v"}, "<Leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {})
    end
}
