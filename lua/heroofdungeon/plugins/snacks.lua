return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },    -- Disables stuff like LSP and Treesitter on big files
		dashboard = { enabled = false }, -- Alternative to alpha
		indent = { enabled = true },     -- Adds these cool vertical lines
		input = { enabled = false },     -- Adds input box
		picker = { enabled = false },    -- Telescope alternative
		notifier = { enabled = true },   -- Makes vim.notify look better
		scope = { enabled = true },      -- Scope detection
		scroll = { enabled = false },    -- Smooth scrolling
	},
}
