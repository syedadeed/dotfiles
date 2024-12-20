--Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

--Lazy Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

--Code run
local function run()
    -- Get the current buffer's file name and file type
    local file_name = vim.api.nvim_buf_get_name(0)
    local file_type = vim.api.nvim_buf_get_option(0, "filetype")

    -- Define the command based on the file type
    local command
    if file_type == "python" then
        command = "python '" .. file_name .. "'"
    elseif file_type == "c" then
        command = "gcc '" .. file_name .. "' && ./a.out && rm a.out"
    elseif file_type == "cpp" then
        command = "g++ '" .. file_name .. "' && ./a.out && rm a.out"
    elseif file_type == "sh" then
        command = "bash '" .. file_name .. "'"
    elseif file_type == "lua" then
        command = "lua " .. file_name
    else
        print("No support for the file type: " .. file_type)
        return
    end

    --Create the terminal window
    vim.cmd(":botright 10split | term")
    vim.cmd("startinsert")

    --this delay is to makes sure command only executes once the terminal session has been opened
    vim.api.nvim_command("sleep 100m")

    --Run the command
    vim.api.nvim_chan_send(vim.b.terminal_job_id, command .. "\n")
end

-- highlight text when yanked
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.api.nvim_set_hl(0, 'CustomYankHighlight', {
      fg = '#ffffff',
      bg = '#32557d',
    })

    vim.highlight.on_yank({
      higroup = 'CustomYankHighlight',
      timeout = 150,
    })
  end
})

vim.cmd.colorscheme "ayu-dark"

vim.api.nvim_set_keymap('n', 'e', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'e', '$', { noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>', ':bdelete!<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-t>', ':enew<CR>', { noremap = true, silent = true })

vim.api.nvim_create_user_command("Run", run, {})

vim.api.nvim_set_keymap("n", "<C-d>", ":Run<CR>", { noremap = true, silent = true })

--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--    vim.lsp.diagnostic.on_publish_diagnostics, {
--        virtual_text = false
--    }
--)
