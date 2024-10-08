--call plug#begin()
--Plug 'mfussenegger/nvim-dap'
--Plug 'nvim-neotest/nvim-nio'
--Plug 'rcarriga/nvim-dap-ui'

--call plug#end()
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")



-- Install plugins using lazy.nvim
require("lazy").setup({
  -- Example: Install nvim-treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically run :TSUpdate after install
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {"c", "cpp", "lua", "python"},
        highlight = { enable = true },
      }
    end
  },

  -- Example: Install nvim-lspconfig for LSP support
  {
    "neovim/nvim-lspconfig",
    config = function()
      local nvim_lsp = require("lspconfig")
      nvim_lsp.clangd.setup {} -- Configure clangd for C/C++ support
    end
  },

  -- Example: Install a fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Dependencies for Telescope
    config = function()
      require("telescope").setup {}
    end
  },
  {
    "williamboman/mason.nvim"
},
  --DAPPPPPPPPPP
  -- DAP for debugging
  -- DAP UI for a better debugging experience
    {
      "nvim-neotest/nvim-nio"
  },
--ENDDAPPPPPPP
	{
		'christianchiarulli/nvcode-color-schemes.vim'
	},

})
--vim.cmd[[colorscheme dark]]
--vim.cmd("colorscheme kanagawa-dragon")
-- Create custom command to view DAP log
--vim.cmd[[colorscheme xoria]]
vim.cmd[[colorscheme aurora]]
-- Set log level for DAP (useful for debugging DAP itself)
--require('dap').set_log_level('TRACE')
require("mason").setup()
-- Additional key mappings
--vim.api.nvim_set_keymap('n', '<Leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
