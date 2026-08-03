return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"saghen/blink.lib",
			"milanglacier/minuet-ai.nvim",
		},
		opts = function()
			return {
				keymap = {
					preset = "default",
					["<A-y>"] = require("minuet").make_blink_map(),
				},

				appearance = {
					nerd_font_variant = "mono",
				},

				completion = {
					accept = {
						auto_brackets = {
							enabled = false,
						},
					},

					documentation = {
						auto_show = true,
						auto_show_delay_ms = 50,
						update_delay_ms = 50,
					},

					ghost_text = {
						enabled = true,
					},
				},

				sources = {
					default = { "lsp", "path", "buffer" },
					providers = {
						minuet = {
							name = "minuet",
							module = "minuet.blink",
							async = true,
							-- Should match minuet.config.request_timeout * 1000,
							-- since minuet.config.request_timeout is in seconds
							timeout_ms = 2500,
							score_offset = 50, -- Gives minuet higher priority among suggestions
						},
					},
				},

				fuzzy = { implementation = "prefer_rust" },

				signature = { enabled = true },
			}
		end,
	},
}
