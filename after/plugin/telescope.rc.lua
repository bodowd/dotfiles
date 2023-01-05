local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        initial_mode="normal",
        layout_strategy="flex",
        mappings = {
            i = {
                ["<C-c>"] = actions.close
            },
            n = {
                ["<C-c>"] = actions.close,
                ["<C-s>"] = actions.select_horizontal
            }
        }
    },
    pickers = {
        live_grep = { additional_args = function(opts) return { "--hidden" } end ,
            initial_mode="insert"
        },
        find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/**" },
            initial_mode="insert"
        },
    },
    -- extensions = {
    --     file_browser = {
    --         cwd_to_path = true,
    --         path = "%:p:h",
    --         hidden = true,
    --         hide_parent_dir = true,
    --         initial_mode = "normal",
    --         layout_strategy="flex",
    --         -- disables netrw and use telescope-file-browser in its place
    --         hijack_netrw = true,
    --         mappings = {
    --             -- your custom insert mode mappings
    --             -- your custom normal mode mappings
    --             ["n"] = {
    --                 -- open file in new vsplit <C-v>
    --
    --                 -- tab to select the files, then go to the place you want to
    --                 -- move or copy and then hit the following buttons
    --                 -- depending on what you want to do
    --                 -- m is move
    --                 -- y is copy
    --                 ["N"] = fb_actions.create,
    --                 ["rn"] = fb_actions.rename,
    --                 ["up"] = fb_actions.goto_parent_dir,
    --                 ["<C-c>"] = actions.close
    --             },
    --         },
    --     },
    -- },
}

telescope.load_extension("file_browser")
-- open telescope file browswer
vim.keymap.set('n', '<C-b>', ':Telescope file_browser<Return>')

vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', 'gr', '<Cmd>lua require "telescope.builtin".lsp_references{jump_type="never"}<CR>')
vim.keymap.set('n', 'gd', '<Cmd>lua require "telescope.builtin".lsp_definitions{jump_type="never"}<CR>')
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', 'gt', '<Cmd>lua require "telescope.builtin".lsp_type_definitions{jump_type="never"}<CR>')
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
