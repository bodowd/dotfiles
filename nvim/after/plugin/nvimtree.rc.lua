-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "N", api.fs.create, opts("Create File Or Directory"))
end
-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	on_attach = my_on_attach,
	view = {
		relativenumber = true,
		adaptive_size = true,
	},
	renderer = {
		group_empty = true,
	},
	git = {
		enable = true,
		ignore = false,
	},
	filters = {
		dotfiles = false,
	},
	update_focused_file = {
		enable = false,
	},
})

vim.keymap.set("n", "<leader>tt", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<Cmd>NvimTreeFindFile<CR>")
