require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		typescript = { "prettier" },
		javascript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		markdown = { "prettier" },
		graphql = { "prettier" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		python = { "black" },
	},
	format_on_save = function(bufnr)
		-- Disable autoformat on certain filetypes
		local ignore_filetypes = { "prisma" }
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end
		return {
			async = false,
			timeout_ms = 500,
			lsp_fallback = true,
		}
	end,
})
