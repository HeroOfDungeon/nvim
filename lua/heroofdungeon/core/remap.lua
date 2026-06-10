vim.g.mapleader = " ";

vim.keymap.set("n", "dl", "d2l")
vim.keymap.set("n", "dh", "d2h")

vim.keymap.set("n", "gj", "<cmd>%!jq .<CR>", { desc = "Format JSON" })

-- Key mappings for tab management
vim.keymap.set("n", "<C-t>", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<C-w>", "<cmd>tabclose!<CR>", { noremap = true, silent = true, desc = "Close current tab" })
vim.keymap.set("n", "<C-n>", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<C-l>", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<C-p>", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<C-h>", "<cmd>tabprevious<CR>", { desc = "Previous tab" })

vim.opt.splitbelow = true;
vim.opt.splitright = true;
vim.opt.laststatus = 3;
vim.keymap.set({ "n", "v" }, "s", "<cmd>split .<CR>", { desc = "Horizontal split" })
vim.keymap.set({ "n", "v" }, "S", "<cmd>vsplit .<CR>", { desc = "Vertical split" })
-- vim.keymap.set({ "n", "v" }, "t", "<cmd>split | terminal<CR>", { desc = "Horizontal terminal split" })
-- vim.keymap.set({ "n", "v" }, "T", "<cmd>vsplit | terminal<CR>", { desc = "Vertical terminal split" })
vim.keymap.set({ "n", "v" }, "<leader>h", "<C-w>h", { desc = "Move left one split" })
vim.keymap.set({ "n", "v" }, "<leader>l", "<C-w>l", { desc = "Move right one split" })
vim.keymap.set({ "n", "v" }, "<leader>j", "<C-w>j", { desc = "Move down one split" })
vim.keymap.set({ "n", "v" }, "<leader>k", "<C-w>k", { desc = "Move up one split" })
vim.keymap.set({ "i", "n", "v" }, "<C-h>", "<C-w>h", { desc = "Move left one split" })
vim.keymap.set({ "i", "n", "v" }, "<C-l>", "<C-w>l", { desc = "Move right one split" })
vim.keymap.set({ "i", "n", "v" }, "<C-j>", "<C-w>j", { desc = "Move down one split" })
vim.keymap.set({ "i", "n", "v" }, "<C-k>", "<C-w>k", { desc = "Move up one split" })

-- Switch to tab n (1-9)
for i = 1, 9 do
  vim.keymap.set("n", "<C-" .. i .. ">", "<cmd>tabn " .. i .. "<CR>", { desc = "Go to tab " .. i })
end

-- Rebind U to redo (Ctrl + R)
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "List Git commits" })
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "List Git files" })
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List Git branches" })
