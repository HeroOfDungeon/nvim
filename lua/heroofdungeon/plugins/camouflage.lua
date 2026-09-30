return {
	"zeybek/camouflage.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		style = "stars", -- stars, dotted, text or scramble
	},
	keys = {
		{ "<leader>m", "<cmd>CamouflageToggle<cr>", desc = "Toggle Camouflage" },
	},
}
