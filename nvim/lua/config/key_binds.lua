vim.api.nvim_set_keymap('n', 'e', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'e', '$', { noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>', ':bdelete!<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", ":Run<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle left<CR>", {silent = true})
vim.keymap.set("n", "<C-Space>", ":Telescope find_files<CR>", {silent = true})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "D", vim.lsp.buf.definition, {})
vim.keymap.set({"n", "v"}, "C", vim.lsp.buf.code_action, {})
