-- if vim.g.loaded_lspsaga then
  -- print("E", vim.g.loaded_lspsaga)
-- else
  -- print("G")
-- end

require('lspsaga').init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
}

-- nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
-- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
-- nnoremap <silent> gp :Lspsaga preview_definition<CR>