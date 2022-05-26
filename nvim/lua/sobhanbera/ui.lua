-- +-----------------------------------------------------+
-- |                     COLORSCHEME                     |
-- +-----------------------------------------------------+
-- vim.cmd('let g:gruvbox_contrast_dark = "hard"')
vim.cmd("set termguicolors")
vim.cmd('let ayucolor="dark"')
vim.cmd("colorscheme ayu")

vim.cmd('hi Normal guibg=#0E1F27')
vim.cmd("hi CursorLine gui=NONE cterm=NONE")
vim.cmd("hi ColorColumn ctermbg=0 guibg=#3C3835")
vim.cmd("hi OverLength ctermbg=NONE ctermfg=NONE guibg=#0F1419 guifg=#14BC85")

-- highlight related to "cmp" plugins
vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#14BC85")
vim.cmd("highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#14BC85")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4")
vim.cmd("highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4")
vim.cmd("highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4")

-- highlights for diagnostic
vim.cmd("hi DiagnosticError ctermbg=12 ctermfg=NONE guibg=NONE guifg=#F24B42") -- highlights for errors
vim.cmd("hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#F5B439") -- highlights for warnings
vim.cmd("hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47") -- highlights for info
vim.cmd("hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#14BC85") -- highlight for hint in diagnostic

-- menu related highlights
vim.cmd("hi! Pmenu guibg=#09101A") -- auto-complete or any menu highlight
vim.cmd("hi! PmenuSel guibg=#09101A guifg=#14BC85") -- highlight for the currently selected menu item
vim.cmd("hi! PmenuSbar guibg=NONE") -- the scrollbar highlight
vim.cmd("hi! PmenuThumb guibg=#14BC85") -- the thumb highlight in menu scrollbar

-- which key plugins highlights
vim.cmd("hi! WhichKeyFloating guibg=#0F1419") -- this is the which key background color, this must be same as the terminal bg color (alacritty for now as I am using that)

-- search and visual highlight
vim.cmd("hi Search guibg=#2B3035 guifg=#14BC85") -- highlight for the search terms
vim.cmd("hi Visual guibg=#1F2429") -- highlight for the code selection in visual mode

vim.cmd("hi DashboardHeader guifg=#14BC85")
vim.cmd("hi DashboardCenter guifg=#AEFA47")
vim.cmd("hi DashboardShortcut guifg=#F5B439")
vim.cmd("hi DashboardFooter guifg=#F24B42")
