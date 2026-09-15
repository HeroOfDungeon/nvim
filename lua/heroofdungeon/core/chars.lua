local grid = {
	top_left = "+",
	top = "+",
	top_right = "+",
	right = "+",
	center = "+",
	left = "+",
	bottom_left = "+",
	bottom = "+",
	bottom_right = "+",
	horizontal = "-",
	horizontal_special = "~",
	vertical = "|",
}

local bullets = {
	"-",
	"*",
}

local checkboxes = {
	checked = "x",
	unchecked = "o",
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
		grid.right,
		grid.center,
		grid.left,
		grid.bottom_left,
		grid.bottom,
		grid.bottom_right,
		grid.horizontal,
		grid.vertical,
	},
	grid = grid,
	bullets = bullets,
	checkboxes = checkboxes,
}
