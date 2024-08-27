return {
	{
	    "rcarriga/nvim-dap-ui",
	     dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		},

		config = function()
			require("config.dapui").setup()
		end,
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
                   "rcarriga/nvim-dap-ui",
		},

		config = function()
			local dap = require("dap")
			vim.keymap.set("n", "<Leader>c", dap.continue, {})

			local dapui = require("dapui")
			--C++ DAP Config
			dap.adapters.lldb = {
			   type = "executable",
			   command = "lldb-dap",
			   name = "lldb" 
			}
			
			-- Configuration for C++ LLDB DAP
			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {}, -- Pass command line arguments to the program here
				},
				{
					name = "Attach to process",
					type = "lldb",
					request = "attach",
					pid = require('dap.utils').pick_process,
					args = {},
				},
				{
					name = "Attach to LLDB server",
					type = "lldb",
					request = "attach",
					host = function()
						return vim.fn.input('Host [localhost]: ', 'localhost')
					end,
					port = function()
						return tonumber(vim.fn.input('Port [1234]: ', '1234'))
					end,
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = "${workspaceFolder}",
				},
			
			}
			-- C++ Configuration above				
			dap.configurations.c = dap.configurations.cpp

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()

			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			
			--vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
			--vim.keymap.set("n", "<Leader>c", dap.continue, {})
		end,
	},
}
