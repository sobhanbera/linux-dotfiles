"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" context show configs...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:context_enabled = 0
let g:context_highlight_normal = 'Normal'
let g:context_highlight_border = 'Comment'
let g:context_highlight_tag    = 'Special'
nnoremap <leader>ce :ContextEnable<CR>
nnoremap <leader>ct :ContextToggle<CR>
nnoremap <leader>cd :ContextDisable<CR>
