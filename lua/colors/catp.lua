local M = {}
M.setup = function()

require("catppuccin").setup({
    integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mason = true,
        dap = true,
        dap_ui = true,
        alpha = true,    

        native_lsp = {
           enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
                ok = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
                ok = { "underline" },
         },
        inlay_hints = {
             background = true,
             },
},

        telescope = {
            enabled = true,
        },

         }
     })
    end
return M

