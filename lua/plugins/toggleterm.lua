local last_height = 20
local last_width = 80
local last_row = 0
local last_col = 0

local function is_valid_window(win_id)
  return win_id and vim.api.nvim_win_is_valid(win_id)
end

return {
    'akinsho/toggleterm.nvim',

    version = "*",
    opts = {
        size = 20,
        open_mapping = [[<C-\>]],  -- Keybinding to open the terminal
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,  -- Persist size across sessions
        direction = "float",  -- Floating terminal
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
        on_open = function(term)
            if is_valid_window(term.window) then
                local config = vim.api.nvim_win_get_config(term.window)
                if config.relative == 'editor' then
                    vim.api.nvim_win_set_height(term.window, last_height)
                    vim.api.nvim_win_set_width(term.window, last_width)
                    vim.api.nvim_win_set_config(term.window, {
                        relative = 'editor',
                        row = last_row,
                        col = last_col,
                        width = last_width,
                        height = last_height,
                    })
                end
            end
        end,
        on_close = function(term)
            if is_valid_window(term.window) then
                local config = vim.api.nvim_win_get_config(term.window)
                if config.relative == 'editor' then
                    last_height = config.height
                    last_width = config.width
                    last_row = config.row
                    last_col = config.col
                end
            end
        end,
    },
}

