return {
	"lewis6991/gitsigns.nvim",
	reload = false,
	config = function()
		require("gitsigns").setup({
      signs = {
        add          = { text = require("heroofdungeon.core.chars").git_icons.add },
        change       = { text = require("heroofdungeon.core.chars").git_icons.change },
        delete       = { text = require("heroofdungeon.core.chars").git_icons.delete },
        topdelete    = { text = require("heroofdungeon.core.chars").git_icons.topdelete },
        changedelete = { text = require("heroofdungeon.core.chars").git_icons.changedelete },
        untracked    = { text = require("heroofdungeon.core.chars").git_icons.untracked },
      },
      signs_staged = {
        add          = { text = require("heroofdungeon.core.chars").git_icons.add },
        change       = { text = require("heroofdungeon.core.chars").git_icons.change },
        delete       = { text = require("heroofdungeon.core.chars").git_icons.delete },
        topdelete    = { text = require("heroofdungeon.core.chars").git_icons.topdelete },
        changedelete = { text = require("heroofdungeon.core.chars").git_icons.changedelete },
        untracked    = { text = require("heroofdungeon.core.chars").git_icons.untracked },
      },
    })

    vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "List Git commits" })
    vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "List Git files" })
    vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List Git branches" })

    vim.keymap.set("n", "<leader>gB", require("gitsigns").blame, { desc = "Open Git Blame" })
    vim.keymap.set('n', '<leader>gT', function() require("gitsigns").blame_line({ full = true }) end, { desc = "Open Git Blame for current line"})
    vim.keymap.set('n', '<leader>G', require("gitsigns").preview_hunk)
	end,
}
