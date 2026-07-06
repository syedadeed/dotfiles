return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-q>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-n>"] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_next_item() elseif vim.snippet.active({direction = 1}) then vim.snippet.jump(1) else fallback() end end, {"i", "s"}),
                ["<C-p>"] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_prev_item() elseif vim.snippet.active({direction = -1}) then vim.snippet.jump(-1) else fallback() end end, {"i", "s"}),
            }),
            sources = cmp.config.sources({
                {name = "nvim_lsp"},
                {name = "buffer"},
                {name = "path"}
            })
        })
    end
}
