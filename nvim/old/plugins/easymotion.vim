" Gif config
" map  / <Plug>(easymotion-sn) " don't ever override search command
" omap / <Plug>(easymotion-tn) " don't ever override search command

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
