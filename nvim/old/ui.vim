
" +-----------------------------------------------------+ "
" |                       GRUVBOX                       |
" +-----------------------------------------------------+ "
let g:gruvbox_contrast_dark='hard' " marking the interface hard dark



" +-----------------------------------------------------+ "
" |                       AYU THEME                     |
" +-----------------------------------------------------+ "
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme



" +-----------------------------------------------------+ "
" |                    UI CONFIGS                       |
" +-----------------------------------------------------+ "
colorscheme ayu " calling this after because by default the above line does not execute by its own so needs to be triggered

hi Normal guibg=NONE
hi CursorLine gui=NONE cterm=NONE
hi ColorColumn ctermbg=0 guibg=#3C3835  " highlight the column number
hi OverLength ctermbg=NONE ctermfg=NONE guibg=#000000 guifg=#ADFF2F " highlight the line that is too long

hi DiagnosticError ctermbg=12 ctermfg=NONE guibg=NONE guifg=#F24B42
hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#F5B439
hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47
hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#14BC85
