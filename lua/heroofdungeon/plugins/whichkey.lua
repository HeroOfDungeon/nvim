return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		win = {
			border = require("heroofdungeon.core.options").border,
			height = {
				max = 30,
			},
		},
		icons = {
			seperator = "=>",
		},
	},
	-- keys = {
	--   {
	--     "<leader>?",
	--     function()
	--       require("which-key").show({ global = false })
	--     end,
	--     desc = "Buffer Local Keymaps (which-key)",
	--   },
	-- },
}
