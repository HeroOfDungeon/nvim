return {
	"zeybek/camouflage.nvim",
	event = {
		"BufReadPre [.env*, *.env, *.sh, *.json, *.yaml, *.yml, *.toml, *xml, Dockerfile]",
		"BufNewFile [.env*, *.env, *.sh, *.json, *.yaml, *.yml, *.toml, *xml, Dockerfile]",
	},
	opts = {
		style = "stars", -- stars, dotted, text or scramble
	},
	config = function()
		vim.keymap.set("n", "<leader>m", "<cmd>CamouflageToggle<cr>", { desc = "Toggle Camouflage" })
	end,
}
