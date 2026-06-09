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

local border = {"+", "-", "+", "|", "+", "-", "+", "|"};

vim.o.winborder = table.concat(border, ',');
return {
	border = border;
}
