local M = {
	event = "BufReadPre",
}

function M.config()
	require("neodev").setup({
		debug = true,
		experimental = {
			pathStrict = true,
		},
		library = {
			-- runtime = "~/projects/neovim/runtime/",
		},
	})
	require("mason")
	require("plugins.lsp.diagnostics").setup()
	require("plugins.lsp.handlers").setup()
	-- require("neoconf").setup()
	local function on_attach(client, bufnr)
		require("nvim-navic").attach(client, bufnr)
		require("plugins.lsp.formatting").setup(client, bufnr)
		require("plugins.lsp.keys").setup(client, bufnr)
	end

	---@type lspconfig.options
	local servers = {
		ansiblels = {},
		bashls = {},
		clangd = {},
		cssls = {},
		dockerls = {},
		tsserver = {},
		eslint = {},
		html = {},
		jsonls = {
			settings = {
				json = {
					format = {
						enable = true,
					},
					schemas = require("schemastore").json.schemas(),
					validate = { enable = true },
				},
			},
		},
		marksman = {},
		pyright = {},
		rust_analyzer = {
			settings = {
				["rust-analyzer"] = {
					cargo = { allFeatures = true },
					checkOnSave = {
						command = "clippy",
						extraArgs = { "--no-deps" },
					},
				},
			},
		},
		yamlls = {},
		sumneko_lua = {
			cmd = { "lua-language-server" },
			single_file_support = true,
			settings = {
				Lua = {
					workspace = {
						checkThirdParty = false,
					},
					completion = {
						workspaceWord = true,
					},
					misc = {
						parameters = {
							"--log-level=trace",
						},
					},
					diagnostics = {
						-- enable = false,
						-- groupFileStatus = {
						--   ["ambiguity"] = "Opened",
						--   ["await"] = "Opened",
						--   ["codestyle"] = "None",
						--   ["duplicate"] = "Opened",
						--   ["global"] = "Opened",
						--   ["luadoc"] = "Opened",
						--   ["redefined"] = "Opened",
						--   ["strict"] = "Opened",
						--   ["strong"] = "Opened",
						--   ["type-check"] = "Opened",
						--   ["unbalanced"] = "Opened",
						--   ["unused"] = "Opened",
						-- },
						unusedLocalExclude = { "_*" },
					},
					format = {
						enable = false,
						defaultConfig = {
							indent_style = "space",
							indent_size = "2",
							continuation_indent_size = "2",
						},
					},
				},
			},
		},
		teal_ls = {},
		vimls = {},
		tailwindcss = {},
		elixirls = {
			cmd = { "C:/elixirls/language_server.bat" },
			filetypes = { "elixir", "eelixir", "heex", "surface" },
			root_dir = function(fname)
				return require("lspconfig").util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
			end,
		},
	}

	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}
	capabilities.offsetEncoding = { "utf-16" }

	---@type _.lspconfig.options
	local options = {
		on_attach = on_attach,
		capabilities = capabilities,
		flags = {
			debounce_text_changes = 150,
		},
	}

	for server, opts in pairs(servers) do
		opts = vim.tbl_deep_extend("force", {}, options, opts or {})
		if server == "tsserver" then
			require("typescript").setup({ server = opts })
		else
			require("lspconfig")[server].setup(opts)
		end
	end

	require("plugins.null-ls").setup(options)
end

return M
