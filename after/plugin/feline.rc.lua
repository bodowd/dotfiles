local present, feline = pcall(require, "feline")
if not present then return end


-- https://github.com/Hitesh-Aggarwal/feline_one_monokai.nvim/blob/2ff798d4d0435d2145593587dc93a70e72a6d279/plugin/feline_one_monokai.lua
-- changed to make it like tokyonight
local tokyonight = {
    fg = "#c0caf5",
    bg = "#24283b",
    green = "#9ece6a",
    yellow = "#e0af68",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    peanut = "#f6d5a4",
    red = "#f7768e",
    aqua = "#7dcfff",
    blue = "#7aa2f7",
    darkblue = "#282c34",
    dark_red = "#f75f5f",
}

local vi_mode_colors = {
    NORMAL = "peanut",
    OP = "green",
    INSERT = "red",
    VISUAL = "purple",
    LINES = "purple",
    BLOCK = "dark_red",
    REPLACE = "yellow",
    COMMAND = "green",
}

local c = {
    vim_mode = {
        provider = {
            name = "vi_mode",
            opts = {
                show_mode_name = true,
                --padding = "center", -- Uncomment for extra padding.
            },
        },
        hl = function()
            return {
                fg = require("feline.providers.vi_mode").get_mode_color(),
                bg = "darkblue",
                style = "bold",
                name = "NeovimModeHLColor",
            }
        end,
        left_sep = "block",
        right_sep = "block",
    },
    gitBranch = {
        provider = "git_branch",
        hl = {
            fg = "white",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    gitDiffAdded = {
        provider = "git_diff_added",
        hl = {
            fg = "green",
            bg = "darkblue",
        },
        left_sep = "block",
        right_sep = "block",
    },
    gitDiffRemoved = {
        provider = "git_diff_removed",
        hl = {
            fg = "red",
            bg = "darkblue",
        },
        left_sep = "block",
        right_sep = "block",
    },
    gitDiffChanged = {
        provider = "git_diff_changed",
        hl = {
            fg = "fg",
            bg = "darkblue",
        },
        left_sep = "block",
        right_sep = "right_filled",
    },
    separator = {
        provider = "",
    },
    fileinfo = {
        provider = {
            name = "file_info",
            opts = {
                type = "relative",
            },
        },
        hl = {
            style = "bold",
        },
        left_sep = " ",
        right_sep = " ",
    },
    diagnostic_errors = {
        provider = "diagnostic_errors",
        hl = {
            fg = "red",
        },
    },
    diagnostic_warnings = {
        provider = "diagnostic_warnings",
        hl = {
            fg = "yellow",
        },
    },
    diagnostic_hints = {
        provider = "diagnostic_hints",
        hl = {
            fg = "aqua",
        },
    },
    diagnostic_info = {
        provider = "diagnostic_info",
    },
    lsp_client_names = {
        provider = "lsp_client_names",
        hl = {
            fg = "purple",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "left_filled",
        right_sep = "block",
    },
    file_type = {
        provider = {
            name = "file_type",
            opts = {
                filetype_icon = true,
                case = "titlecase",
            },
        },
        hl = {
            fg = "red",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    file_encoding = {
        provider = "file_encoding",
        hl = {
            fg = "yellow",
            bg = "darkblue",
            style = "italic",
        },
        left_sep = "block",
        right_sep = "block",
    },
    position = {
        provider = "position",
        hl = {
            fg = "green",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    line_percentage = {
        provider = "line_percentage",
        hl = {
            fg = "aqua",
            bg = "darkblue",
            style = "bold",
        },
        left_sep = "block",
        right_sep = "block",
    },
    scroll_bar = {
        provider = "scroll_bar",
        hl = {
            fg = "yellow",
            style = "bold",
        },
    },
    inactive_bar = {
        provider = "",
        hl = {
            bg = "NONE",
            style = "underline"
        }
    }
}

local left = {
    c.vim_mode,
    c.gitBranch,
    c.gitDiffAdded,
    c.gitDiffRemoved,
    c.gitDiffChanged,
    c.separator,
}

local middle = {
    c.fileinfo,
    c.diagnostic_errors,
    c.diagnostic_warnings,
    c.diagnostic_info,
    c.diagnostic_hints,
}

local right = {
    -- c.lsp_client_names,
    -- c.file_type,
    -- c.file_encoding,
    c.position,
    c.line_percentage,
    c.scroll_bar,
}

local inactivecomponent = {
    c.inactive_bar
}


local components = {
    active = {
        left,
        middle,
        right,
    },
    inactive = {
        inactivecomponent
    },
}

feline.setup({
    components = components,
    theme = tokyonight, disable = {
        filetypes = {
            '^NvimTree'
        },
        buftypes = { '^terminal$' }
    },
    vi_mode_colors = vi_mode_colors,
})
