return {
  'neovim/nvim-lspconfig',
  lazy = false,
  dependencies = {
    { 'antosha417/nvim-lsp-file-operations', config = true },
    'saghen/blink.cmp',
  },
  config = function()
    require("heroofdungeon.lsp").setup()
  end,
}
