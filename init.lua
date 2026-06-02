require("heroofdungeon.core");
require("heroofdungeon.lazy");

-- Functions
-- Special config if firenvim
if vim.g.started_by_firenvim == true then
  -- Set colorscheme
  vim.cmd.colorscheme("quiet");

  -- Set wrap
  vim.opt_local.wrap = true;
  vim.opt_local.linebreak = true;

  -- Change font
  vim.opt_local.guifont = "Monocraft Nerd Font"

  -- Write while typing
  vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
    nested = true,
    command = "silent write"
  })

  -- Only activate on some selectors
  --[[ vim.g.firenvim_config.localSettings['.*'] = {
    selector = [[
      textarea:not(
        [readonly],
        [aria-readonly],
        name="user-prompt"
      ),
      div[role="textbox"]
    ] ]
  } ]]

  -- for _, url in ipairs(blacklist) do
  --   if url == string.match(vim.api.nvim_buf_get_name(0), "[%l%.]+%.%l+") then
  --     vim.cmd("quit")
  --     vim.cmd.colorscheme("tokyonight");
  --   end
  -- end

else
  local colorscheme = "tokyonight"

  -- vim.lsp.enable()
  --
  -- Overwrite colorscheme when in ghostty
  if os.getenv("TERM") == "xterm-ghostty" then
    colorscheme = "catppuccin-mocha"
  end

  -- Set colorscheme
  vim.cmd.colorscheme(colorscheme);

  -- Enable wrap for .txt and .md files
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.txt", "*.md" },
    callback = function()
      vim.opt_local.wrap = true
      vim.opt_local.linebreak = true
    end,
  })
end

