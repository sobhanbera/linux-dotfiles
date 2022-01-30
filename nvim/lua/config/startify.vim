" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" same as above, but show untracked files, honouring .gitignore
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
            \ { 'type': 'dir',                                    'header': ['   Project - '. getcwd()]    },
            \ { 'type': 'files',                                  'header': ['   Recents']               },
            \ { 'type': 'sessions',                               'header': ['   Sessions']              },
            \ { 'type': 'bookmarks',                              'header': ['   Bookmarks']             },
            \ { 'type': function('s:gitModified'),                'header': ['   Git Modified -']          },
            \ { 'type': function('s:gitUntracked'),               'header': ['   Git Untracked -']         },
            \ { 'type': 'commands',                               'header': ['   Commands']              },
            \ ]
" \ { 'type': function('s:getAllFilesFirstLevel'),      'header': ['   L-1...']     },

let b:ale_fixers = ['prettier', 'eslint']
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
