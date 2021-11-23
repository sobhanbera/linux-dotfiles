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

" returns all the files in an directory...
" level 0
function! s:getAllFilesZeroLevel()
    let files = systemlist('find * -maxdepth 0 -type f')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction
" level 1
function! s:getAllFilesFirstLevel()
    let files = systemlist('find * -maxdepth 1 -type f')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction
" level 2
function! s:getAllFilesSecondLevel()
    let files = systemlist('find * -maxdepth 2 -type f')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'dir',                                    'header': ['   Project - '. getcwd()]    },
        \ { 'type': 'files',                                  'header': ['   Recents']               },
        \ { 'type': 'sessions',                               'header': ['   Sessions']              },
        \ { 'type': 'bookmarks',                              'header': ['   Bookmarks']             },
        \ { 'type': function('s:gitModified'),                'header': ['   Git Modified -']          },
        \ { 'type': function('s:gitUntracked'),               'header': ['   Git Untracked -']         },
        \ { 'type': function('s:getAllFilesFirstLevel'),      'header': ['   L-1...']     },
        \ { 'type': 'commands',                               'header': ['   Commands']              },
        \ ]
