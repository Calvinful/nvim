 return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically run :TSUpdate after install
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {"c", "cpp", "lua", "javascript","java", "llvm"},
        highlight = { enable = true },
      }
    end,
} 
