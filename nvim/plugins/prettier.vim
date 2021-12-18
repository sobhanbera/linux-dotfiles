autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json Prettier
"   autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.gql,*.markdown,*.md,*.mdown,*.mkd,*.mkdn,*.mdx,*.vue,*.svelte,*.yml,*.yaml,*.html,*.php,*.rb,*.ruby,*.xml noautocmd call prettier#Autoformat()
" autocmd BufWritePre * Prettier
" au BufWrite * :Autoformat

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
