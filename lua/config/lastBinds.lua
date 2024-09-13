vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false -- To start with all folds closed (optional)
--vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<C-w><', '<Cmd>resize -2<CR>', {noremap = true, silent = true})
--vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<C-w>>', '<Cmd>resize +2<CR>', {noremap = true, silent = true})
--vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<C-w>-', '<Cmd>vertical resize -2<CR>', {noremap = true, silent = true})
--vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<C-w>+', '<Cmd>vertical resize +2<CR>', {noremap = true, silent = true})
--vim.keymap.set("","",)
--vim.keymap.set('
