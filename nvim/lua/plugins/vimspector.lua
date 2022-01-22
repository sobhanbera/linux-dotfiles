-- +-----------------------------------------------------+
-- |                 VIM SPECTOR DEBUGGER                |
-- +-----------------------------------------------------+

-- local map = require('sobhanbera.mappings').map
-- vim.g.vimspector_enable_mappings = 'HUMAN'

-- map('n', '<leader>va', ':call vimspector#Launch()<CR>')
-- map('n', '<leader>ve', ':VimspectorReset<CR>')
-- map('n', '<leader>ve', ':VimspectorEval')
-- map('n', '<leader>vw', ':VimspectorWatch')
-- map('n', '<leader>vo', ':VimspectorShowOutput')

-- nmap <leader>vb <Plug>VimspectorToggleBreakpoint
-- nmap <leader>vcb <Plug>VimspectorToggleConditionalBreakpoint
-- nmap <leader>vr <Plug>VimspectorRunToCursor

-- now the below mappings are also available with the HUMAN value of mappings
-- above but I just need to map some other keys too
-- that's why I am doing so..
-- nmap <leader>vj <Plug>VimspectorStepOver<CR>
-- nmap <leader>vl <Plug>VimspectorStepInto<CR>
-- nmap <leader>vk <Plug>VimspectorStepOut<CR>

-- nnoremap <leader>vr <Plug>VimspectorRestart<CR>

-- nnoremap <leader>dc :call win_gotoid(g:vimspector_session_windows.code)<CR>
-- nnoremap <leader>dt :call win_gotoid(g:vimspector_session_windows.tagpage)<CR>
-- nnoremap <leader>dv :call win_gotoid(g:vimspector_session_windows.variables)<CR>
-- nnoremap <leader>dw :call win_gotoid(g:vimspector_session_windows.watches)<CR>
-- nnoremap <leader>ds :call win_gotoid(g:vimspector_session_windows.stack_trace)<CR>
-- nnoremap <leader>do :call win_gotoid(g:vimspector_session_windows.output)<CR>
-- nnoremap <leader>de :call vimspector#Reset()<CR>

-- nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

-- nmap <leader>dl <Plug>VimspectorStepInto
-- nmap <leader>dj <Plug>VimspectorStepOver
-- nmap <leader>dk <Plug>VimspectorStepOut
-- nmap <leader>d_ <Plug>VimspectorRestart
-- nnoremap <leader>d<leader> :call vimspector#Continue()<CR>

-- nmap <leader>drc <Plug>VimspectorRunToCursor
-- nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
-- nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

-- <Plug>VimspectorStop
-- <Plug>VimspectorPause
-- <Plug>VimspectorAddFunctionBreakpoint

