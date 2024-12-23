vim.api.nvim_set_keymap("n", "<C-d>", ":Run<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle left<CR>", {silent = true})
vim.keymap.set("n", "<C-Space>", ":Telescope find_files<CR>", {silent = true})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "D", vim.lsp.buf.definition, {})
vim.keymap.set({"n", "v"}, "C", vim.lsp.buf.code_action, {})

vim.keymap.set('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })

-- keymaps can also be found in treesitter.lua(<Leader>(ss,sn,sp,sc), [operation][{a/i}f,c,l,e])
