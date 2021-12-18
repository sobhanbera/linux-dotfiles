"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-lsp configs...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require('lspconfig').tsserver.setup{}
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
" lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
" lua require('lspconfig').tsserver.setup{ on_attach=require('completion').on_attach }
