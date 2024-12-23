vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.api.nvim_set_hl(0, 'CustomYankHighlight', {
      fg = '#ffffff',
      bg = '#32557d'
    })

    vim.highlight.on_yank({
      higroup = 'CustomYankHighlight',
      timeout = 150
    })
  end
})
