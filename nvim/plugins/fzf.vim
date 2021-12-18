" nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>FF :Files<CR>
nnoremap <leader>hh :History:<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>bf :Buffers<CR>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
    \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
    \ fzf#wrap({'dir': expand('%:p:h')}))
if has('nvim')
  au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  au! FileType fzf tunmap <buffer> <Esc>
endif

