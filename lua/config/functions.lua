-- Define the session directory
local session_dir = vim.fn.stdpath('config') .. '/sessions/'

-- Ensure the session directory exists
if vim.fn.isdirectory(session_dir) == 0 then
    vim.fn.mkdir(session_dir, 'p')
end




local function DeleteSession(name)
    local session_file = session_dir .. name .. '.vim'
    if vim.fn.filereadable(session_file) == 1 then
        vim.fn.delete(session_file)
        print("Session deleted: " .. session_file)
    else
        print("Session file does not exist: " .. session_file)
    end
end

-- Define custom command to delete a session
vim.api.nvim_create_user_command('SDelete', function(opts)
    DeleteSession(opts.args)
end, { nargs = 1 })


-- Function to save a session in the session directory
local function SaveSession(name)
    if name == nil or name == "" then
        if vim.g.current_session then
            name = vim.g.current_session
        else
            print("No session name provided and no session is currently active.")
            return
        end
    end

    local session_file = session_dir .. name .. '.vim'
    vim.g.current_session = name

    -- Save the session name in the session file
    local session_command = string.format('mksession! %s', session_file)
    vim.cmd(session_command)

    -- Append the session name to the session file
    local file = io.open(session_file, "a")
    file:write(string.format("\nlet g:current_session = '%s'\n", name))
    file:close()

    print("Session saved to " .. session_file)
end

-- Function to load a session from the session directory
local function LoadSession(name)
    local session_file = session_dir .. name .. '.vim'
    if vim.fn.filereadable(session_file) == 1 then
        vim.cmd('source ' .. session_file)
        vim.g.current_session = name  -- Ensure the session name is set after loading
        print("Session loaded from " .. session_file)
    else
        print("Session file does not exist: " .. session_file)
    end
end

-- Define custom commands to save and load sessions
vim.api.nvim_create_user_command('SSave', function(opts)
    SaveSession(opts.args)
end, { nargs = '?' })  -- nargs = '?' allows for 0 or 1 arguments

vim.api.nvim_create_user_command('SLoad', function(opts)
    LoadSession(opts.args)
end, { nargs = 1 })

-- Optional: Command to list available sessions
vim.api.nvim_create_user_command('SList', function()
    local sessions = vim.fn.globpath(session_dir, '*.vim', false, true)
    if vim.tbl_isempty(sessions) then
        print("No sessions found in " .. session_dir)
    else
        print("Available sessions:")
        for _, session in ipairs(sessions) do
            print(vim.fn.fnamemodify(session, ':t:r'))
        end
    end
end, {})

