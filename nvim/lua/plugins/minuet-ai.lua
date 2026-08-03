return {
	{
		"milanglacier/minuet-ai.nvim",
		config = function()
			require("minuet").setup({
				blink = {
					enable_auto_complete = true,
				},
				provider = "openai_compatible",
				request_timeout = 2.5,
				throttle = 1500, -- Increase to reduce costs and avoid rate limits
				debounce = 600, -- Increase to reduce costs and avoid rate limits
				provider_options = {
					openai_compatible = {
						api_key = function()
							local account = "MDLU6VBGIBHHXG7BQL4SNPYCME"
							local ref = "op://Private/Opencode/api_key"
							return require("op").get_secret(ref, account)
						end,
						end_point = "https://opencode.ai/zen/v1/chat/completions",
						model = "deepseek-v4-flash",
						name = "Opencode",
						optional = {
							max_tokens = 56,
							top_p = 0.9,
							-- disable thinking to avoid first token latency
							thinking = { type = "disabled" },
						},
					},
				},
			})
		end,
	},
}
