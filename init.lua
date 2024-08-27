--require('config.settings')
--vim.opt.guifont = "SF Mono:h11,codicon:h12"
--fonts
--require('plugins/dap-virtual-text')
vim.opt.guifont = "Monaco:h11,codicon:h12"

--vim.opt.termguicolors = true
require('config.mappings')
require('config.lazy')

