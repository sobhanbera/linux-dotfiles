" +-----------------------------------------------------+ "
" |                    DEFAULT CONFIGS                  |
" +-----------------------------------------------------+ "

" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
" gives error that's why commented
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" nmap <silent><F2> <Plug>(coc-rename)

"FOR COC-PRETTIER
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

"FOR VIM-PRETTIER
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css CocCommand prettier.formatFile

" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
