return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "leoluz/nvim-dap-go",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

        require("dapui").setup()
        require("dap-go").setup()

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

        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "[D]ebugger toggle [B]reakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[D]ebugger [C]ontinue"})
		vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "[D]ebugger step [O]ver"})
		vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "[D]ebugger step [I]nto"})
        vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "[D]ebugger [R]epl open" })
	end,
}
