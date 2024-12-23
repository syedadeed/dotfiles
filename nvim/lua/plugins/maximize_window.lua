return {
    "szw/vim-maximizer",
    config = function ()
        vim.keymap.set("n", "<Leader>mm", ":MaximizerToggle<CR>", {silent = true})
    end
}
