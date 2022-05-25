-- +-----------------------------------------------------+
-- |                     COLORSCHEME                     |
-- +-----------------------------------------------------+
-- vim.cmd('let g:gruvbox_contrast_dark = "hard"')
vim.cmd("set termguicolors")
vim.cmd('let ayucolor="dark"')
vim.cmd("let g:gruvbox_contrast_dark = 'hard'")
vim.cmd("colorscheme gruvbox")

vim.cmd("hi OverLength ctermbg=NONE ctermfg=NONE guifg=#83a598")

-- highlight related to "cmp" plugins
vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#689d6a")
vim.cmd("highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#689d6a")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#458588")
vim.cmd("highlight! CmpItemKindInterface guibg=NONE guifg=#458588")
vim.cmd("highlight! CmpItemKindText guibg=NONE guifg=#458588")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#b16286")
vim.cmd("highlight! CmpItemKindMethod guibg=NONE guifg=#b16286")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#ebdbb2")
vim.cmd("highlight! CmpItemKindProperty guibg=NONE guifg=#ebdbb2")
vim.cmd("highlight! CmpItemKindUnit guibg=NONE guifg=#ebdbb2")

-- highlights for diagnostic
vim.cmd("hi DiagnosticError ctermbg=12 ctermfg=NONE guibg=NONE guifg=#cc241d") -- highlights for errors
vim.cmd("hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#F5B439") -- highlights for warnings
vim.cmd("hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47") -- highlights for info
vim.cmd("hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#60A7BD") -- highlight for hint in diagnostic

-- menu related highlights
vim.cmd("hi! Pmenu guibg=#282828") -- auto-complete or any menu highlight
vim.cmd("hi! PmenuSel guibg=#282828 guifg=#689d6a") -- highlight for the currently selected menu item
vim.cmd("hi! PmenuSbar guibg=NONE") -- the scrollbar highlight
vim.cmd("hi! PmenuThumb guibg=#689d6a") -- the thumb highlight in menu scrollbar

-- search and visual highlight
-- vim.cmd("hi Search guibg=#282828 guifg=#689d6a") -- highlight for the search terms
-- vim.cmd("hi Visual guibg=#282828") -- highlight for the code selection in visual mode
