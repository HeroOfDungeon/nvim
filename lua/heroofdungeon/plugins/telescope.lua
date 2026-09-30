return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				borderchars = require("heroofdungeon.core.chars").border,
			},
		})
		local telescope = require("telescope")
		telescope.load_extension("fzf")
	end,
	keys = {
		{ "<leader>f", ":Telescope find_files find_command=rg,--hidden,--files<cr>", desc = "Find file" },
		{ "<leader>w", ":Telescope live_grep find_command=rg,--hidden<cr>", desc = "Find word" },
		{ "<leader>C", ":Telescope colorscheme<cr>", desc = "Select colorscheme" },
	},
}
