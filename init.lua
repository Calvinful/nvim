
vim.g.mapleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.tabstop = 4        -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4    -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true   -- Convert tabs to spaces

require('plugins.vimTree')

--vim.opt.termguicolors = true
--vim.opt.guifont = "FiraCode Nerd Font Mono:h9:cANSI"
require('config.mappings')
require('config.lazy')
require('config.lastBinds')
