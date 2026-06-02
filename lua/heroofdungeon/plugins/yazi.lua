return {
  "mikavilpas/yazi.nvim",
  version = "*", -- use the latest stable version
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  -- opts = {
  --   yazi_floating_window_border = "rounded",
  -- },
  config = function()
    vim.keymap.set("n", "<leader>y", ":Yazi toggle<cr>");
  end
}
