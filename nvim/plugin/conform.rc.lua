require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		json = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		javascript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		markdown = { "prettier" },
		graphql = { "prettier" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		python = { "black" },
		rust = { "rust-analyzer" },
		terraform = { "terraformls" },
		templ = { "templ" },
	},
	format_on_save = function(bufnr)
		-- Disable autoformat on certain filetypes
		local ignore_filetypes = { "prisma" }
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end
		return {
			async = false,
			timeout_ms = 5000,
			lsp_fallback = true,
		}
	end,
})
