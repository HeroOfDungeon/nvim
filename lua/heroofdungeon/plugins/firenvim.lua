return {
	"glacambre/firenvim",
	build = ":call firenvim#install(0)",
	cond = function()
		return vim.g.started_by_firenvim == true
	end,
	config = function()
		local blacklist = {
			"monkeytype.com",
			"cloud.teams.microsoft",
		}

		-- for _, url in ipairs(blacklist) do
		--   vim.g.firenvim_config.localSettings[url] = { takeover = "never", priority = 1 }
		-- end
		-- vim.g.firenvim_config.localSettings["https://monkeytype\\.com/"] = { takeover = "never", priority = 1 }
	end,
}
