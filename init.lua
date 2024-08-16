require('options')
require('keymaps')
require('plugins')
require('colorscheme')
require('lsp')
require('nvim-cmp')
require('monokai').setup {}
require('monokai').setup { palette = require('monokai').pro }
require('monokai').setup { palette = require('monokai').soda }
require('monokai').setup { palette = require('monokai').ristretto }

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
