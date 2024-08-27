  return{
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Dependencies for Telescope
   config = function()
      require("telescope").setup {}
    end,
  }
