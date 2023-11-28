require("lualine").setup({
	options = {
		-- theme = "tokyonight",
		section_separators = "",
		component_separators = "",
		disabled_filetypes = { "NvimTree", "toggleterm" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{
				"branch",
				icon = "󰊢",
			},
			"diff",
			"diagnostics",
		},
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
