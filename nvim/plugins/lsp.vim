"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-lsp configs...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua require('lspconfig').tsserver.setup{}
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
" lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
" lua require('lspconfig').tsserver.setup{ on_attach=require('completion').on_attach }

" Here are some of the important lsp key bindings...
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting_seq_sync(nil, 1000)<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gw    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>

" nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" autoformat
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)
" autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)
