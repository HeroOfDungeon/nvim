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

    require("which-key").add({
      { "<leader>g", group = "Git" }
    })

    vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "List commits" })
    vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "List files" })
    -- vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List branches" })

    vim.keymap.set('n', '<leader>gw', require("gitsigns").toggle_word_diff, { desc = "Toggle word diff" })
    vim.keymap.set("n", "<leader>gb", require("gitsigns").blame, { desc = "Open Blame" })
    vim.keymap.set('n', '<leader>gl', function() require("gitsigns").blame_line({ full = true }) end, { desc = "Open Blame for current line"})
    vim.keymap.set('n', '<leader>gs', function() require("gitsigns").diff("main") end, { desc = "Open current status"})
    vim.keymap.set('n', '<leader>gr', function()
      os.execute("git fetch origin/main")
      require("gitsigns").diffthis("origin/main")
    end, { desc = "Diff current file with remote" })
	end,
}
