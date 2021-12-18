let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 50
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-e> <Esc>:Ttoggle<CR>
inoremap <c-e> <Esc>:Ttoggle<CR>
tnoremap <c-e> <c-\><c-n>:Ttoggle<CR>
nnoremap <leader>x :TREPLSendLine<CR>
vnoremap <leader>x :TREPLSendSelection<CR>
