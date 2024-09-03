return{
   -- { "navarasu/onedark.nvim", lazy = true },
--  { "sainnhe/edge", lazy = true },
  --{ "sainnhe/sonokai", lazy = true },
  --{ "sainnhe/gruvbox-material", lazy = true },
  --{ "sainnhe/everforest", lazy = true },
  --{ "EdenEast/nightfox.nvim", lazy = true },
  --{ "catppuccin/nvim", name = "catppuccin", lazy = true },
  --{ "olimorris/onedarkpro.nvim", lazy = true },
  --{ "marko-cerovac/material.nvim", lazy = true },
  --{
   -- "rockyzhang24/arctic.nvim",
   -- dependencies = { "rktjmp/lush.nvim" },
   -- name = "arctic",
   -- branch = "v2",
 -- },
 -- { "rebelot/kanagawa.nvim", lazy = true },
 { 
     "catppuccin/nvim",
   config = function()
    require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
                 },
             }
        })
   end

 }
--require("catppuccin").setup({
--    integrations = {
        --cmp = true,
        --gitsigns = true,
        --nvimtree = true,
        --treesitter = true,
        --notify = false,
        --mini = {
            --enabled = true,
            --indentscope_color = "",
        --},
    --}
--})
}
