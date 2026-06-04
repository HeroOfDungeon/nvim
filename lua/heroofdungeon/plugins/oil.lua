return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			skip_confirm_for_simple_edits = true,
			prompt_save_on_select_new_entry = false,
			watch_for_changes = true,
      -- In case i ever see a rounded border within oil
      -- float = {
      --   border = require("heroofdungeon.core.options").border,
      -- },
      -- configuration = {
      --   border = require("heroofdungeon.core.options").border,
      -- },
      -- progress = {
      --   border = require("heroofdungeon.core.options").border,
      -- },
      -- keymaps_help = {
      --   border = require("heroofdungeon.core.options").border,
      -- },
			view_options = {
				show_hidden = true,
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".git"
				end,
			},
		})
		vim.keymap.set("n", "<leader>e", ":set nosplitright | vsplit | vertical resize 40 | Oil . | set splitright<cr>")
		vim.keymap.set("n", "<leader>e", ":Oil<cr>")
	end,
	lazy = false,
}
