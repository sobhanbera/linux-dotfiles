
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

" hi Normal guibg=NONE
" hi CursorLine gui=NONE cterm=NONE
" highlight ColorColumn ctermbg=0 guibg=#3C3835  " highlight the column number
" highlight OverLength ctermbg=NONE ctermfg=NONE guibg=#000000 guifg=#ADFF2F " highlight the line that is too long
