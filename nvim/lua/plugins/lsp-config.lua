return {
	{
		"williamboman/mason.nvim",
		-- version = "^1.0.0",
		config = true,
	},
	-- {
	-- 	"williamboman/mason-lspconfig.nvim",
	--        -- version = "^1.0.0",
	-- 	dependencies = {
	-- 		"williamboman/mason.nvim",
	-- 	},
	-- 	opts = {
	-- 		automatic_installation = true,
	-- 	},
	-- },
	{
		"neovim/nvim-lspconfig",
		-- dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Defaults merged into every server's config.
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			-- Per-server overrides — only declare these where you actually
			-- diverge from nvim-lspconfig's shipped defaults.
			vim.lsp.config("basedpyright", {
				settings = {
					basedpyright = {
						analysis = {
							typeCheckingMode = "standard", -- "off" if too noisy
							autoImportCompletions = true,
							diagnosticMode = "openFilesOnly",
						},
					},
				},
			})

			vim.lsp.config("ruff", {
				cmd = { "ruff", "server", "--preview" },
			})

			-- Servers to enable. The ones without their own vim.lsp.config call
			-- still pick up the "*" defaults plus nvim-lspconfig's per-server
			-- defaults from lsp/<name>.lua.
			vim.lsp.enable({
				"bashls",
				"gopls",
				"lua_ls",
				"basedpyright",
				"ruff",
				"rust_analyzer",
				"taplo",
				"yamlls",
				"zls",
			})

			-- Buffer-local keymaps when a server attaches.
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					local map = function(mode, lhs, rhs, desc)
						vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, desc = desc })
					end
					map("n", "K", vim.lsp.buf.hover, "[K] Hover documentation")
					map("n", "<leader>gd", vim.lsp.buf.definition, "[G]o to [D]efinition")
					map("n", "<leader>gi", vim.lsp.buf.implementation, "[G]o to [I]mplementation")
					map("n", "<leader>gr", vim.lsp.buf.references, "[G]o to [R]eferences")
					map("n", "<leader>rn", vim.lsp.buf.rename, "[R]e[N]ame")
					map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
				end,
			})
		end,
	},
}
