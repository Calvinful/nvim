return{
    {
        "catppuccin/nvim",
        --dependencies = {
        -- "mfussenegger/nvim-dap",
        -- "rcarriga/nvim-dap-ui",
        --  },
        config = function()
            require("colors.catp").setup()
        end
    }
}
