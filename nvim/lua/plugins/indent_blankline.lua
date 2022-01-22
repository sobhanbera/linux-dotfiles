-- +-----------------------------------------------------+
-- |     INDENT BLANK LINE PLUGIN CONFIG                 |
-- +-----------------------------------------------------+
vim.cmd [[highlight IndentBlanklineContextChar guifg=#60b8d6 gui=nocombine]]
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
