return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				["*"] = {
          -- stylua: ignore
          keys = {
            { "gh", vim.lsp.buf.hover, desc = "Hover" },
            { "K", "E", desc = "End" }, -- override K to go to end of WORD instead of hover, since hover is mapped to gh
          },
				},
				ty = {
					settings = {
						ty = {},
					},
				},
				rust_analyzer = {},
				lua_ls = {
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
							diagnostics = { disable = { "missing-fields" } },
						},
					},
				},
			},
		},
	},
}
