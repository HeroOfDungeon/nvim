local grid = {
	top_left = "+",
	top = "+",
	top_right = "+",
	left = "+",
	center = "+",
	right = "+",
	bottom_left = "+",
	bottom = "+",
	bottom_right = "+",
	vertical = "|",
	horizontal = "-",
	horizontal_special = "~",
}

local bullets = {
	"-",
	"*",
}

local checkboxes = {
	checked = "x",
	unchecked = "o",
}

local quote = ">"

local tree = {
  line = "|",
  branch = "+",
  last = "`",
  folder_closed = "o",
  folder_open = "u",
  folder_empty = "u",
  expander_collapsed = "-",
  expander_expanded = "+",
}

local git_icons = {
  added = "+",
  renamed = "~",
  changed = "*",
  changed_mark = "|",
  deleted = "-",
  topdelete = "-",
  changedelete = "~",
  untracked = "?",
  untracked_mark = "¦",
  ignored = "@",
  unstaged = "v",
  staged = "^",
  conflict = "!"
}

return {
	lsp_symbols = {
		error = "!",
		warn = "?",
		hint = "H",
		info = "I",
	},
	border = {
		grid.top_right,
		grid.horizontal,
		grid.top_left,
		grid.vertical,
		grid.bottom_left,
		grid.horizontal,
		grid.bottom_right,
		grid.vertical,
	},
	table_border = {
		grid.top_left,
		grid.top,
		grid.top_right,
		grid.left,
		grid.center,
		grid.right,
		grid.bottom_left,
		grid.bottom,
		grid.bottom_right,
		grid.vertical,
		grid.horizontal,
	},
	grid = grid,
	bullets = bullets,
	checkboxes = checkboxes,
  quote = quote,
  git_icons = git_icons,
  tree = tree,
}
