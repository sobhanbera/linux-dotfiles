let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json ALEFix
