return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        {"williamboman/mason.nvim", opts = {}},
        "neovim/nvim-lspconfig",
        "b0o/schemastore.nvim"
    },
    config = function()
        local schema_store = require("schemastore")
        vim.lsp.config("lua_ls", {settings = {Lua = {workspace = {library = vim.api.nvim_get_runtime_file("", true)}}}})
        vim.lsp.config("ts_ls", {init_options = {preferences = {disableSuggestions = true}}})
        vim.lsp.config("jsonls", {settings = {json = {schemas = schema_store.json.schemas()}}})
        vim.lsp.config("yamlls", {settings = {yaml = {schemaStore = {enable = false, url = ""}, schemas = schema_store.yaml.schemas()}}})
        require("mason-lspconfig").setup()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set({"n", "v"}, "<Leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {})
    end
}
