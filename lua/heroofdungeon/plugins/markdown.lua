return {
	{
		"MeanderingProgrammer/render-markdown.nvim",

		config = function()
			require("render-markdown").setup({
				render_modes = { "n", "c", "i" },
				completions = {
					lsp = {
						enabled = true,
					},
				},
				heading = {
					enabled = false,
				},
				sign = {
					enabled = false,
				},
				code = {
					width = "block",
					-- left_pad = 2,
					-- right_pad = 2,
					border = "thick",
				},
				dash = {
					icon = require("heroofdungeon.core.options").grid.horizontal,
				},
				bullet = {
					icons = require("heroofdungeon.core.options").bullets,
				},
				checkbox = {
					unchecked = {
						icon = require("heroofdungeon.core.options").checkboxes.unchecked,
					},
					checked = {
						icon = require("heroofdungeon.core.options").checkboxes.checked,
						scope_highlight = "@markup.strikethrough",
					},
				},
				quote = {
					repeat_linebreak = true,
				},
				pipe_table = {
					style = "normal",
					cell = "trimmed",
					border = require("heroofdungeon.core.options").table_border,
					alignment_indicator = require("heroofdungeon.core.options").grid.horizontal_special,
				},
				indent = {
					enabled = true,
					icon = require("heroofdungeon.core.options").grid.vertical,
				},
			})
		end,
	},
	-- {
	-- 	"StefanBartl/markdown.nvim",
	-- 	dependencies = { "StefanBartl/lib.nvim" },
	-- 	ft = { "markdown", "mdx", "md" },
	--    features = {
	--      disable = {
	--        "preview", "mdview", "create", "scope",
	--        "fold", "tableview"
	--      }
	--    },
	-- 	config = function()
	-- 		require("markdown").setup()
	-- 	end,
	-- },
	-- {
	-- "StefanBartl/pdfport.nvim",
	--   dependencies = { "StefanBartl/lib.nvim" },
	--   cmd = { "PdfPort" },
	--   opts = {
	--     default_backend = "pdftotext",
	--   },
	--   config = function ()
	--     -- Oil
	--     require("pdfport.integrations.oil").setup()
	--
	--     -- Telescope
	--     local pdfport_tel = require("pdfport.integrations.telescope")
	--
	--     require("telescope.builtin").find_files({
	--       previewer = pdfport_tel.previewer({ max_pages = 3 }),
	--     })
	--   end
	-- }
}
