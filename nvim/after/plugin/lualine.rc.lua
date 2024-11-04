require("lualine").setup({
	options = {
		theme = "tokyonight-night",
		section_separators = "",
		component_separators = "",
		disabled_filetypes = { "NvimTree", "toggleterm" },
	},
	sections = {
		lualine_a = {},
		lualine_b = {
			{
				"branch",
				icon = "󰊢",
			},
			"diff",
			"diagnostics",
		},
		-- lualine_c = {
		-- 	{
		-- 		"buffers",
		-- 		mode = 4,
		-- 		symbols = {
		-- 			modified = " ●", -- Text to show when the buffer is modified
		-- 			alternate_file = "#", -- Text to show to identify the alternate file
		-- 			directory = "", -- Text to show when the buffer is a directory
		-- 		},
		-- 	},
		-- },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = {},
		lualine_y = { "progress" },
		lualine_z = {},
	},
})
