
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
" git files
nnoremap <leader>f <cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({}))<CR>
" find any file
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({}))<cr>
" pick color scheme
nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({}))<CR>
" bookmarks
nnoremap <leader>' <cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({}))<CR>
" find in current buffer or opened file
nnoremap <leader>/ <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({}))<CR>
" find buffer
nnoremap ; <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<CR>
