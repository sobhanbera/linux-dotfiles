autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css Prettier
" au BufWrite * :Autoformat

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
