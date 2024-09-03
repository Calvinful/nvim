 return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically run :TSUpdate after install
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {"c",
            "cpp",
            "lua",
            "javascript",
            "java",
            "llvm",
            "bash",
            "html",
            "json",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "tsx",
            "typescript",
            "vim",
             "yaml",


    },
        highlight = { enable = true },
      }
    end,
} 
