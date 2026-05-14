local filetypes = require('tony.treesitter-filetypes')
require('nvim-treesitter').install(filetypes.parsers)

vim.api.nvim_create_autocmd('FileType', {
  pattern = filetypes.filetypes,
  callback = function()
    vim.treesitter.start()
  end,
})
