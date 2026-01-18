return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        {"williamboman/mason.nvim", opts = {}},
        "neovim/nvim-lspconfig",
        "b0o/schemastore.nvim"
    },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local schema_store = require("schemastore")
        require("mason-lspconfig").setup({
            function (server_name)
                require("lspconfig")[server_name].setup({capabilities = capabilities})
            end
        })
        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            settings = {Lua = {workspace = {library = vim.api.nvim_get_runtime_file("", true)}}}
        })
        vim.lsp.config("ts_ls", {
            capabilities = capabilities,
            init_options = {preferences = {disableSuggestions = true}}
        })
        vim.lsp.config("jsonls", {
            capabilities = capabilities,
            settings = {json = {schemas = schema_store.json.schemas()}}
        })
        vim.lsp.config("yamlls", {
            capabilities = capabilities,
            settings = {yaml = {schemaStore = {enable = false, url = ""}, schemas = schema_store.yaml.schemas()}}
        })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set({"n", "v"}, "<Leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {})
    end
}
