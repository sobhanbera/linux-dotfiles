"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-lsp configs...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if !exists('g:lspconfig')
"     finish
" endif

" lua << EOF
" local nvim_lsp = require('lspconfig')
" local protocol = require('vim.lsp.protocol')

" local on_attach = function(client, bufnr)
"     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

"     local opts = {noremap = true, silent = true}
"     buf_set_keymap('n', 'gd', '<C>lua vim.lsp.definition()<CR>', opts)
" end

" require('lspconfig').tsserver.setup{
"     on_attach = on_attach,
"     filetypes = {'typescript', 'typescriptreact', 'typescript.tsx', 'javascript', 'javascriptreact', 'javascript.jsx'}
" }
" EOF

lua require('lspconfig').tsserver.setup{}
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
" lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
" lua require('lspconfig').tsserver.setup{ on_attach=require('completion').on_attach }


" Here are some of the important lsp key bindings...
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
