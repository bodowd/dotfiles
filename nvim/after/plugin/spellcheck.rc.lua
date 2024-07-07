function SpellToggle()
	if vim.opt.spell:get() then
		vim.opt_local.spell = false
		vim.opt_local.spelllang = "en"
	else
		vim.opt_local.spell = true
		vim.opt_local.spelllang = { "en_us" }
	end
end

vim.api.nvim_create_user_command("ST", function()
	SpellToggle()
end, { nargs = 0 })
