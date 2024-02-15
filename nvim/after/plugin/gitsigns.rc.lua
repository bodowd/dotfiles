local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

gitsigns.setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns
		-- local function map(mode, l, r, opts)
		-- end
		local opts = { buffer = bufnr }
		vim.keymap.set("n", "<leader>gh", gs.preview_hunk, opts)
		vim.keymap.set("n", "<leader>n", gs.next_hunk, opts)
		vim.keymap.set("n", "<leader>N", gs.prev_hunk, opts)
	end,
})
