" +-----------------------------------------------------+ "
" |                 VIM SPECTOR DEBUGGER                |
" +-----------------------------------------------------+ "

fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle " also needed maximizer plugin for this action
endfun

" let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <leader>va :call vimspector#Launch()<CR>
nnoremap <leader>ve :VimspectorReset<CR>
nnoremap <leader>ve :VimspectorEval
nnoremap <leader>vw :VimspectorWatch
nnoremap <leader>vo :VimspectorShowOutput

nmap <leader>vb <Plug>VimspectorToggleBreakpoint
nmap <leader>vcb <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>vr <Plug>VimspectorRunToCursor

" now the below mappings are also available with the HUMAN value of mappings
" above but I just need to map some other keys too
" that's why I am doing so..
nmap <leader>vj <Plug>VimspectorStepOver<CR>
nmap <leader>vl <Plug>VimspectorStepInto<CR>
nmap <leader>vk <Plug>VimspectorStepOut<CR>

" nnoremap <leader>vr <Plug>VimspectorRestart<CR>

" nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
" nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
" nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
" nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
" nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
" nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
" nnoremap <leader>de :call vimspector#Reset()<CR>

" nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

" nmap <leader>dl <Plug>VimspectorStepInto
" nmap <leader>dj <Plug>VimspectorStepOver
" nmap <leader>dk <Plug>VimspectorStepOut
" nmap <leader>d_ <Plug>VimspectorRestart
" nnoremap <leader>d<leader> :call vimspector#Continue()<CR>

" nmap <leader>drc <Plug>VimspectorRunToCursor
" nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
" nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

" <Plug>VimspectorStop
" <Plug>VimspectorPause
" <Plug>VimspectorAddFunctionBreakpoint

