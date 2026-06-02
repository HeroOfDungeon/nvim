return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
    "timrydefalk/blink-cmp-nerdfont",
    "bydlw98/blink-cmp-env",
    "timrydefalk/blink-cmp-emoji",
	},
	version = "v1.*",
	opts = {
		keymap = {
			-- preset = "enter",
			preset = "none",
			["<Tab>"] = {
				function(cmp)
					if false then -- TODO: Check if only 1 suggestion
						cmp.accept()
					else
						cmp.select_next()
					end
				end,
			},
			-- ["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = {function (cmp)
			  if cmp.snippet_active() then
			    cmp.snippet_forward();
        else
          cmp.select_prev();
			  end
			end},
			-- ["<S-Tab>"] = { "snippet_forward", "fallback" },
			["<Esc>"] = { "cancel", "fallback" },
			["<UP>"] = { "scroll_documentation_up", "fallback" },
			["<DOWN>"] = { "scroll_documentation_down", "fallback" },
			["<CR>"] = {
				function(cmp)
					if cmp.snippet_active() then
						return cmp.accept()
					else
						return cmp.select_and_accept()
					end
				end,
				"accept",
				"fallback",
			},
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			trigger = {
				show_on_keyword = true,
			},
			list = {
				selection = {
					preselect = true,
					auto_insert = false,
				},
			},
			ghost_text = {
				enabled = true,
				show_with_menu = true,
			},
			menu = {
				auto_show = true,
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},
			documentation = {
				auto_show = true,
			},
		},
		signature = {
			enabled = true,
		},
		fuzzy = { implementation = "prefer_rust" },
    sources = {
      default = { "lsp", "buffer", "snippets", "path", "emoji", "nerdfont", "env"},
      providers = {
        emoji = {
          module = "blink-cmp-emoji",
          name = "blink-cmp-emoji",
          max_items = 10,
          min_keyword_length = 1,
          score_offset = 10,
          opts = {
            trigger = ":"
          }
        },
        nerdfont = {
          module = "blink-cmp-nerdfont",
          name = "blink-cmp-nerdfont",
          max_items = 10,
          min_keyword_length = 1,
          score_offset = 10,
          opts = {
            trigger = ";"
          }
        },
        env = {
          name = "Env",
          module = "blink-cmp-env",
          -- Trigger is $
        }
      }
    }
	},
	opts_extend = { "sources.default" },
}
