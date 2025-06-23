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

		require("dapui").setup({
			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
			controls = {
				icons = {
					pause = "⏸",
					play = "▶",
					step_into = "⏎",
					step_over = "⏭",
					step_out = "⏮",
					step_back = "b",
					run_last = "▶▶",
					terminate = "⏹",
					disconnect = "⏏",
				},
			},
		})
		require("dap-go").setup({
			delve = {
				-- using system installation of delve, not mason.
				path = vim.fn.exepath("dlv") ~= "" and vim.fn.exepath("dlv") or "/opt/homebrew/bin/dlv",
			},
		})

		dap.listeners.after.event_initialized.dapui_config = function()
			dapui.open()
		end
		-- dap.listeners.before.attach.dapui_config = function()
		-- 	dapui.open()
		-- end
		-- dap.listeners.before.launch.dapui_config = function()
		-- 	dapui.open()
		-- end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

	end,
	keys = {
		{
			"<leader>Db",
			function()
				require("dap").toggle_breakpoint()
			end,
			mode = { "n" },
			desc = "[D]ebugger toggle [B]reakpoint",
		},
		{
			"<leader>Dc",
			function()
				require("dap").continue()
			end,
			mode = { "n" },
			desc = "[D]ebugger [C]ontinue",
		},
		{
			"<leader>Do",
			function()
				require("dap").step_over()
			end,
			mode = { "n" },
			desc = "[D]ebugger step [O]ver",
		},
		{
			"<leader>Di",
			function()
				require("dap").step_into()
			end,
			mode = { "n" },
			desc = "[D]ebugger step [I]nto",
		},
		{
			"<leader>Dr",
			function()
				require("dap").repl.open()
			end,
			mode = { "n" },
			desc = "[D]ebugger [R]epl open",
		},
	},
}
