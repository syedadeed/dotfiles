require("config.vim_options")
require("config.lazy_setup")
require("config.code_runer")
require("config.hl_yank")
require("config.key_binds")
require("config.cycle_buff")
vim.cmd.colorscheme("ayu-dark")
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = false })
-- TODO: neo tree, telescope, ui_improvements, git_signs
-- Linting and formatting => https://youtu.be/y1WWOaLCNyI?feature=shared
-- snippets => https://youtu.be/Dn800rlPIho?feature=shared
-- debuggers
