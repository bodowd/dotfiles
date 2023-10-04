require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		typescript = { { "prettierd", "prettier" } },
		javascript = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		markdown = { { "prettierd", "prettier" } },
		graphql = { { "prettierd", "prettier" } },
		c = { "clang_format" },
		cpp = { "clang_format" },
		python = { "black" },
	},
	format_on_save = {
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
