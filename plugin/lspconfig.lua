local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

require("nvim-lsp-installer").setup {}

local protocol = require('vim.lsp.protocol')

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
end


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    --local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    --buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap = true, silent = true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    --buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    --buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- find lsps here
-- add the setup below
-- install in Mason
-- set up formatter in nullls
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
    capabilities = capabilities
}

--Enable (broadcasting) snippet capability for completion
local css_lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
css_lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = css_lsp_capabilities
}

nvim_lsp.yamlls.setup { on_attach = on_attach }

-- needed to run :TSInstall hcl to get the syntax highlighting
nvim_lsp.terraformls.setup { on_attach = on_attach }

local osname = vim.loop.os_uname().sysname
local sumneko_cmd
if osname == "Darwin" then
    sumneko_cmd = { "lua-language-server" }
end
if osname == "Linux" then
    local sumneko_root_path = "/home/bing/tools/lua-language-server"
    local sumneko_binary    = sumneko_root_path .. "/bin/lua-language-server"
    sumneko_cmd             = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" }
end


nvim_lsp.sumneko_lua.setup {
    cmd = sumneko_cmd,
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)
        enable_format_on_save(client, bufnr)
    end,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },

            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
        },
    },
}

nvim_lsp.pylsp.setup {
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { 'W391' },
                    maxLineLength = 100
                }
            }
        }
    },
    capabilities = capabilities
}

nvim_lsp.clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}



vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "●" },
    severity_sort = true,
}
)

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
    virtual_text = {
        prefix = '●'
    },
    update_in_insert = true,
    float = {
        source = "always", -- Or "if_many"
    },
})
