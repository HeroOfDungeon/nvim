return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = false,
			theme = "auto",
			padding = 1,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
				refresh_time = 16, -- ~60fps
				events = {
					"WinEnter",
					"BufEnter",
					"BufWritePost",
					"SessionLoadPost",
					"FileChangedShellPost",
					"VimResized",
					"Filetype",
					"CursorMoved",
					"CursorMovedI",
					"ModeChanged",
				},
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = {
				{
					"branch",
					icon = "/",
				},
				{
					"diff",
					symbols = {
						added = "+",
						modified = "~",
						removed = "-",
					},
				},
				{
					"diagnostics",
					symbols = {
						error = "!",
						warn = "?",
						hint = "H",
						info = "I",
					},
				},
			},
			lualine_c = {
				{
					"filename",
					path = 4,
					file_status = true,
					newfile_status = true,
					symbols = {
						modified = "[*]",
						readonly = "[-]",
						unnamed = "[?]",
						newfile = "[+]",
					},
				},
			},
			lualine_x = {
				{
					"lsp_status",
					icon = "*",
					symbols = {
						-- Standard unicode symbols to cycle through for LSP progress:
						spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
						-- Standard unicode symbol for when LSP is done:
						done = "",
						-- Delimiter inserted between LSP names:
						separator = " ",
					},
				},
				"encoding",
				{ "filetype", colored = true },
			},
			lualine_y = { "progress" },
			lualine_z = { { "location", padding = { left = 0 } } },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
	},
	-- config = function ()
	--   vim.o.laststatus = 3
	-- end,
}
