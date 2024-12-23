return {
    {
        "neovim/nvim-lspconfig",
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {"mason.nvim"},
        config = function()
            require("mason-lspconfig").setup_handlers({
                function (server_name)
                    local capabs = require("cmp_nvim_lsp").default_capabilities()
                    capabs.textDocument.completion.completionItem.snippetSupport = false
                    require("lspconfig")[server_name].setup({capabilities = capabs})
                end
            })
        end
    }
}
