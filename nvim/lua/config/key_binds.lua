--[[
keymaps can be found in treesitter.lua:
    init_selection = "<Leader>ss"
    node_incremental = "<Leader>ss"
    node_decremental = "<Leader>sx"

    ["af"] = "@function.outer",
    ["if"] = "@function.inner",
    ["ac"] = "@conditional.outer",
    ["ic"] = "@conditional.inner",
    ["al"] = "@loop.outer",
    ["il"] = "@loop.inner",
    ["ae"] = "@class.outer",
    ["ie"] = "@class.inner"

keymaps can be found in lsp.lua:
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set({"n", "v"}, "<Leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {})

keymaps can be found in code_runner.lua:
    vim.api.nvim_set_keymap("n", "<C-D>", ":Run<CR>", {silent = true})

keymaps can be found in completions.lua:
    ["<C-b>"] = cmp.mapping.scroll_docs(-4)
    ["<C-f>"] = cmp.mapping.scroll_docs(4)
    ["<C-Space>"] = cmp.mapping.complete()
    ["<C-q>"] = cmp.mapping.abort()
    ["<CR>"] = cmp.mapping.confirm({ select = true })

keymaps can be found in maximize_window.lua:
    vim.keymap.set("n", "<Leader>mm", ":MaximizerToggle<CR>", {silent = true})

keymaps can be found in comment_operator.lua:
    gc operator used for toggling line comments
    gb operator used for toggling block comment

    gcc for toggling commenting a single line using a line comment
    gbc for toggling commenting a single line using a block comment

keymaps can be found in telescope.lua:
    vim.keymap.set("n", "<C- >", require("telescope.builtin").find_files)

keymaps can be found in neo-tree.lua:
    vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle<CR>", {silent = true})

keymaps can be found in git_integration.lua:
    :TODO
--]]

vim.keymap.set("n", "<Leader>nl", ":nohl<CR>", {silent = true})

vim.keymap.set("n", "<Leader>sh", ":new<CR>", {silent = true})
vim.keymap.set("n", "<Leader>sv", ":vnew<CR>", {silent = true})
vim.keymap.set("n", "<Leader>sc", ":close<CR>", {silent = true})

vim.keymap.set("n", "<Leader>to", ":tabnew<CR>", {silent = true})
vim.keymap.set("n", "<Leader>nn", ":tabnext<CR>", {silent = true})
vim.keymap.set("n", "<Leader>pp", ":tabprevious<CR>", {silent = true})
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", {silent = true})
vim.keymap.set("n", "<Leader>tt", ":tabnew %<CR>", {silent = true})

vim.keymap.set("n", "<C-c>", ":bdelete<CR>", {silent = true})
vim.keymap.set("n", "<Leader>bo", ":enew<CR>", {silent = true})

vim.keymap.set("n", "<C-h>", "<C-W>h", {silent = true})
vim.keymap.set("n", "<C-j>", "<C-W>j", {silent = true})
vim.keymap.set("n", "<C-k>", "<C-W>k", {silent = true})
vim.keymap.set("n", "<C-l>", "<C-W>l", {silent = true})

vim.keymap.set("n", "<C-n>", ":cnext<CR>", {silent = true})
vim.keymap.set("n", "<C-p>", ":cprevious<CR>", {silent = true})

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {silent = true})
