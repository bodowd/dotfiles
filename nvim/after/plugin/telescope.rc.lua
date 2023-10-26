local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		initial_mode = "normal",
		layout_strategy = "flex",
		mappings = {
			i = {
				["<C-c>"] = actions.close,
			},
			n = {
				["<C-c>"] = actions.close,
				["<C-s>"] = actions.select_horizontal,
			},
		},
	},
	pickers = {
		live_grep = {
			additional_args = function(opts)
				return { "--hidden" }
			end,
			initial_mode = "insert",
		},
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/**" },
			initial_mode = "insert",
		},
		current_buffer_fuzzy_find = {
			initial_mode = "insert",
		},
		help_tags = {
			initial_mode = "insert",
		},
	},
})

telescope.load_extension("harpoon")

vim.keymap.set("n", "<C-f>", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "gr", '<Cmd>lua require "telescope.builtin".lsp_references{jump_type="never"}<CR>')
vim.keymap.set("n", "gd", '<Cmd>lua require "telescope.builtin".lsp_definitions{jump_type="never"}<CR>')
vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
vim.keymap.set("n", "gt", '<Cmd>lua require "telescope.builtin".lsp_type_definitions{jump_type="never"}<CR>')
vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})

-- harpoon keymaps
vim.api.nvim_create_user_command("HM", function()
	require("harpoon.mark").add_file()
	print(vim.fn.printf("Added to harpoon"))
end, { nargs = 0 })
vim.keymap.set("n", "<leader>h", "<Cmd>Telescope harpoon marks<CR>")
