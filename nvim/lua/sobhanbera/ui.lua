-- +-----------------------------------------------------+
-- |                     COLORSCHEME                     |
-- +-----------------------------------------------------+
-- vim.cmd('let g:gruvbox_contrast_dark = "hard"')
vim.cmd('set termguicolors')
vim.cmd('let ayucolor="dark"')
vim.cmd('colorscheme ayu')

vim.cmd('hi Normal guibg=NONE')
vim.cmd('hi CursorLine gui=NONE cterm=NONE')
vim.cmd('hi ColorColumn ctermbg=0 guibg=#3C3835')
vim.cmd('hi OverLength ctermbg=NONE ctermfg=NONE guibg=#000000 guifg=#14BC85')

vim.cmd('highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080')
vim.cmd('highlight! CmpItemAbbrMatch guibg=NONE guifg=#3394C6')
vim.cmd('highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#3394C6')
vim.cmd('highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4')

vim.cmd('hi DiagnosticError ctermbg=12 ctermfg=NONE guibg=NONE guifg=#F24B42')
vim.cmd('hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#F5B439')
vim.cmd('hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47')
vim.cmd('hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#14BC85')

vim.cmd('hi! Pmenu guibg=#0D0D19')
vim.cmd('hi! PmenuSel guibg=#0D0D19 guifg=#3394C6')
vim.cmd('hi! PmenuSbar guibg=NONE')
vim.cmd('hi! PmenuThumb guibg=#3394C6')

vim.cmd('hi! StartifyHeader guifg=#F93E49')
vim.cmd('hi! StartifySection guifg=#F93E49')
