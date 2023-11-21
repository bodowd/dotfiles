local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.set_preferences({
	set_lsp_keymaps = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I",
	},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	local bind = vim.keymap.set
	bind("n", "rn", function()
		vim.lsp.buf.rename()
	end, opts)
	bind("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	bind("n", "<C-k>", function()
		vim.diagnostic.open_float()
	end, opts)
	bind("n", "[<down>", function()
		vim.diagnostic.goto_next()
	end, opts)
	bind("n", "[<up>", function()
		vim.diagnostic.goto_prev()
	end, opts)
	bind("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
end)

-- when renaming across files, it will open it in buffers. Use :wa to save across all buffers
-- %bd|e# will close the open buffers where the renamed files are
vim.api.nvim_create_user_command("SaveAndDeleteBuffers", "wa|%bd|e#", { nargs = 0 })

-- show the diagnostic without having to hover over it
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	update_in_insert = false,
	virtual_text = { spacing = 4 },
	severity_sort = true,
})

local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- -- Hover actions
			-- vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- -- Code action groups
			-- vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

lsp.setup()
