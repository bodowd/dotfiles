local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
		disable = {},
	},
	indent = {
		enable = true,
		-- not working for python with tree sitter, so turn it off
		disable = { "python" },
	},
	-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
	ensure_installed = {
		"typescript",
		"tsx",
		"toml",
		"json",
		"yaml",
		"css",
		"html",
		"lua",
		"python",
		"go",
		"hcl",
		"c",
		"cpp",
		"markdown",
		"templ",
	},
	autotag = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			scope_incremental = "<S-CR>",
			node_decremental = "<BS>",
		},
	},
})

vim.filetype.add({
	extension = {
		templ = "templ",
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
