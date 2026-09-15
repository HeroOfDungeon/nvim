vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 4

vim.opt.updatetime = 50

vim.opt.termguicolors = true
vim.opt.isfname:append("@-@")

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.iskeyword:append("-")
vim.opt.autochdir = false
vim.opt.path:append("**")

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

local border = {
	grid.top_right,
	grid.horizontal,
	grid.top_left,
	grid.vertical,
	grid.bottom_left,
	grid.horizontal,
	grid.bottom_right,
	grid.vertical,
}

vim.o.winborder = table.concat(border, ",")
return {
	lsp_symbols = {
		error = "!",
		warn = "?",
		hint = "H",
		info = "I",
	},
	border = border,
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
	bullets = {
		"-",
		"*",
	},
	checkboxes = {
		checked = "x",
		unchecked = "o",
	},
}
