return {

    --Springboot LSP config!
    {'nvim-java/nvim-java',
    config = function()
        require("lspconfig").jdtls.setup({})
    end,
},
  -- Mason and related plugins
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "cmake"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
    lspconfig.cmake.setup{
        filetypes = { "cmake"},
    }
      -- Configure clangd
      lspconfig.clangd.setup{
        cmd = { "clangd","--compile-commands-dir=build", "--background-index" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("CMakeLists.txt", ".git"),
        single_file_support = true,
        -- Add any other settings you want
      }

      -- Set up key bindings for LSP functionality
      local opts = { noremap=true, silent=true }
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

      -- Enable diagnostics
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = true,
      })
    end
  },

  -- Keep your existing treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {"c", "cpp", "lua", "javascript", "java", "llvm"},
        highlight = { enable = true },
      }
    end,
  }
}
