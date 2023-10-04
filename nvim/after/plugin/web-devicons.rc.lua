local status, icons = pcall(require, "nvim-web-devicons")
if not status then
	return
end

icons.setup({})

icons.set_icon({
	prisma = {
		icon = "",
		color = "#ffffff",
		cterm_color = "white",
		name = "Prisma",
	},
})
