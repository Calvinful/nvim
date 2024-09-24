vim.env.JAVA_HOME = "/usr/local/opt/openjdk@17"
vim.env.PATH = vim.env.JAVA_HOME .. "/bin:" .. vim.env.PATH

--/usr/local/opt/openjdk@17/bin/java
--
vim.g.mapleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.tabstop = 4        -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4    -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true   -- Convert tabs to spaces


vim.loader.enable()
require('config.functions')
require('plugins.vimTree')

--vim.opt.termguicolors = true
--vim.opt.guifont = "FiraCode Nerd Font Mono:h9:cANSI"
require('config.mappings')
require('config.lazy')
--require('colors.colorschemes')
--require('colors.colorschemes')
--require('colors.catp')
require('config.lastBinds')

