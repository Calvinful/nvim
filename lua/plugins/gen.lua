return {
    "David-Kunz/gen.nvim",
    opts = {
        model = "llama3.1:8b", -- The default model to use.
        quit_map = "q", -- set keymap for closing the response window
        retry_map = "<c-r>", -- set keymap to re-send the current prompt
        accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
        host = "192.168.1.78", -- The host running the Ollama service.
        port = "30005", -- The port on which the Ollama service is listening.
        display_mode = "float", -- The display mode. Can be "float", "split", or "horizontal-split".
        show_prompt = false, -- Shows the prompt submitted to Ollama.
        show_model = false, -- Displays the model you're using at the beginning of your chat session.
        no_auto_close = false, -- Never closes the window automatically.
        hidden = false, -- Hide the generation window, requires Neovim >= 0.10.
        command = function(options)
            local body = { model = options.model, stream = true }
            return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
        end,
        debug = false -- Prints errors and the command that is run.
    },
    config = function()
        -- Load the gen module
        local gen = require("gen")

        -- Clear all existing prompts
        gen.prompts = {}

        -- Define only the prompts you want
        gen.prompts['Rewrite'] = {
            prompt = "Rewrite this code and make it work:\n$text",
            replace = true
        }
        gen.prompts['Fix_Code'] = {
            prompt = "Fix the following code. Only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
            replace = true,
            extract = "```$filetype\n(.-)```"
        }
        gen.prompts['Explain'] = {
            prompt = "Explain the following code:\n$text",
            replace = false
        }
    end
}

