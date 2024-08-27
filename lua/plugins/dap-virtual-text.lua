return{
	'theHamsta/nvim-dap-virtual-text',
	dependencies = { "mfussenegger/nvim-dap"},
	config = function()

	require('config.debugText')
end,
}
