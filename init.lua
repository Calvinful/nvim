
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins.vimTree')

--vim.opt.termguicolors = true
--vim.opt.guifont = "FiraCode Nerd Font Mono:h9:cANSI"
require('config.mappings')
require('config.lazy')

