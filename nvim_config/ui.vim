" UI & theme...
" colorscheme gruvbox
let g:gruvbox_contrast_dark='hard' " marking the interface hard dark
colorscheme gruvbox " calling this after because by default the above line does not execute by its own so needs to be triggered
highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight OverLength ctermbg=NONE ctermfg=NONE guibg=#000000 guifg=#ADFF2F

hi Normal guibg=NONE
hi CursorLine gui=NONE cterm=NONE
