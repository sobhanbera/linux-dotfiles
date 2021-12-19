" no extra change from the lsp config
" I mean this below line could also be placed in the lsp.vim file since this is the one belong to that only
" still to give a separate sense what we are doing this file is for that
" this line makes sure that when a file is saved and belong to the extensions list then format the file...
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json gf
" <ESC>lua vim.lsp.buf.formatting()<CR>
