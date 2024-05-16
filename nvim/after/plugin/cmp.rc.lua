local status, cmp = pcall(require, "cmp")
if not status then
	return
end

-- local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	-- needs to be toggled with <C-n> to turn on the autocomplete menu
	completion = {
		autocomplete = false,
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
		["<C-c>"] = cmp.mapping(cmp.mapping.abort()),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
		}),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
	}),
	-- formatting = {
	-- 	format = lspkind.cmp_format({ with_text = true, maxwidth = 50 }),
	-- },
	enabled = function()
		-- disable completion in comments
		local context = require("cmp.config.context")
		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == "c" then
			return true
		else
			return (
				not context.in_treesitter_capture("comment")
				and not context.in_syntax_group("Comment")
				and vim.bo.ft ~= "markdown"
			)
		end
	end,
})

cmp.setup.filetype("gitcommit", {
	completion = { autocomplete = false },
})
-- vim.cmd [[
--   set completeopt=menuone,noinsert,noselect
--   highlight! default link CmpItemKind CmpItemMenuDefault
-- ]]
