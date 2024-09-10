vim.g.mapleader = "\\"
vim.api.nvim_set_keymap('n', '<leader><Esc>', ':noh<CR>', { noremap = true, silent = true })

--Debugging controls
vim.api.nvim_set_keymap('n', '<Leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', "<cmd>lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', "<cmd>lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', "<cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-h>', '<Nop>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })

--WINDOW RESIZING
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -


vim.api.nvim_set_keymap('n', '<leader>e', "<cmd>NvimTreeOpen <CR>", { noremap = true, silent = true })



vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- tab management
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader><tab>x", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader><tab>c", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- navigate vim panes
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

--Fallback because MacOS sends ctrl+h as crtl-b
--vim.keymap.set("n", "<c-b>", ":wincmd h<CR>")
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab with \+tab+p
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab with \+tab+o

-- Terminal in current window command
vim.keymap.set("n","<c-w><leader>", "<cmd>terminal<CR>", {desc = "terminal"})

--diagnostic in lsp
-- Key mappings for navigating diagnostics
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dl', function() vim.diagnostic.setloclist() end, { noremap = true, silent = true })

