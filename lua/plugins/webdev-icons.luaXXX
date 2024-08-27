return {
    'nvim-tree/nvim-web-devicons',

    config = function()
        require('nvim-web-devicons').setup{
            -- Your personal icons can go here (to override)
            -- You can specify color or cterm_color instead of specifying both of them
            -- DevIcon will be appended to `name`
            override = {
                zsh = {
                    icon = "",
                    color = "#428850",
                    cterm_color = "65",
                    name = "Zsh"
                }
            },
            -- Globally enable different highlight colors per icon (default to true)
            -- If set to false, all icons will have the default icon's color
            color_icons = true,

            -- Globally enable default icons (default to false)
            -- Will get overridden by `get_icons` option
            default = true,

            -- Globally enable "strict" selection of icons
            strict = true,

            -- Override by filename
            override_by_filename = {
                [".gitignore"] = {
                    icon = "",
                    color = "#f1502f",
                    name = "Gitignore"
                }
            },

            -- Override by extension
            override_by_extension = {
                ["log"] = {
                    icon = "",
                    color = "#81e043",
                    name = "Log"
                }
            },

            -- Override by operating system
            override_by_operating_system = {
                ["apple"] = {
                    icon = "",
                    color = "#A2AAAD",
                    cterm_color = "248",
                    name = "Apple"
                }
            }
        }
    end,
}

