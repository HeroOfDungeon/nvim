return {
  'glacambre/firenvim',
  build = ":call firenvim#install(0)",
  config = function ()
    blacklist = {
      "monkeytype.com",
      "cloud.teams.microsoft"
    }

    -- for _, url in ipairs(blacklist) do
    --   vim.g.firenvim_config.localSettings[url] = { takeover = "never", priority = 1 }
    -- end
  end,
}
