return {
  "mikavilpas/yazi.nvim",
  version = "*", -- use the latest stable version
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  -- opts = {
  --   -- yazi_floating_window_border = {"+", "-", "+", "|", "+", "-", "+", "|"},
  --   yazi_floating_window_border = "solid",
  --   yazi_floating_wwindow_winblend = 50,
  -- },
  config = function()
    require("yazi").setup({
      yazi_floating_window_border = require("heroofdungeon.core.options").border,
      -- yazi_floating_window_border = "solid",
    })
    vim.keymap.set("n", "<leader>y", ":Yazi toggle<cr>");
  end
}
