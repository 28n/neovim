return {
	{
		"zbirenbaum/copilot.lua",
		lazy = false,
		enabled = true,
		priority = 1000,
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					debounce = 75,
					keymap = {
						accept = "<C-J>",
						accept_word = "<C-W>",
						accept_line = "<C-L>",
						next = "<C-]>",
						prev = "<C-[>",
						dismiss = "<C-K>",
					},
				},
			})
		end,
	},
}
