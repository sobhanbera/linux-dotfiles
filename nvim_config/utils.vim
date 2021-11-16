" +-----------------------------------------------------+ "
" |                        UTILITIES                    |
" +-----------------------------------------------------+ "
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup SOBHAN_BERA
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript

    " For competitive programming...
    nnoremap <leader>lio :e in.txt <CR>:split out.txt<CR>
    nnoremap <leader>cp :cd ~/Documents/Codes<CR>
    autocmd filetype java nnoremap <F9> :w <CR> :!javac %:r.java
    autocmd filetype java nnoremap <F10> :w <CR> :terminal java %:r
    autocmd filetype cpp nnoremap <F9> :w <CR> :!g++ -std=c++14 -Wshadow -Wall -o %:r %:r.cpp -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG<CR>
    autocmd filetype cpp nnoremap <F10> :terminal ./%:r<CR>
    autocmd filetype py,python nnoremap <F10> :w <bar> :terminal python %
    autocmd filetype js,javascript nnoremap <F10> :w <bar> !node %
augroup END