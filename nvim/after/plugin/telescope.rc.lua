local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local HEIGHT = 0.35
local PREVIEWER_ON = false

telescope.setup({
	defaults = {
		initial_mode = "normal",
		mappings = {
			i = {
				["<C-c>"] = actions.close,
			},
			n = {
				["<C-c>"] = actions.close,
				["<C-s>"] = actions.select_horizontal,
				["<C-d>"] = actions.delete_buffer,
			},
		},
	},
	pickers = {
		live_grep = {
			additional_args = function(opts)
				return { "--hidden" }
			end,
			initial_mode = "insert",
			theme = "ivy",
			previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/**" },
			initial_mode = "insert",
			theme = "ivy",
			previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		current_buffer_fuzzy_find = {
			initial_mode = "insert",
			theme = "ivy",
			previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		help_tags = {
			initial_mode = "insert",
			theme = "ivy",
			previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		buffers = {
			initial_mode = "normal",
			theme = "ivy",
			previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
			ignore_current_buffer = true,
			sort_mru = true,
		},
		lsp_document_symbols = {
			theme = "ivy",
			-- previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		diagnostics = {
			theme = "ivy",
			-- previewer = PREVIEWER_ON,
			layout_config = {
				height = HEIGHT,
			},
		},
		git_status = {
			-- previewer = PREVIEWER_ON,
			theme = "ivy",
			layout_config = {
				height = 0.7,
			},
		},
		lsp_references = {
			theme = "ivy",
			layout_config = {
				height = HEIGHT,
			},
		},
		lsp_definitions = {
			theme = "ivy",
			layout_config = {
				height = HEIGHT,
			},
		},
		lsp_type_definitions = {
			theme = "ivy",
			layout_config = {
				height = HEIGHT,
			},
		},
	},
})

telescope.load_extension("harpoon")

vim.keymap.set("n", "<C-f>", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.live_grep, {})
vim.keymap.set("n", "<C-b>", builtin.buffers, {})
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
vim.keymap.set(
	"n",
	"<leader>h",
	"<Cmd>Telescope harpoon marks theme=ivy previewer=false layout_config={height=0.3} <CR>"
)

-- ctrl+d deletes the selected mark in harpoon
