local status, gitsigns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup {
    on_attach=function(bufnr)
        local gs = package.loaded.gitsigns
        -- local function map(mode, l, r, opts)
        -- end
        local opts = {buffer=bufnr}
        vim.keymap.set('n', '<leader>gd', gs.diffthis, opts)

    end
}
