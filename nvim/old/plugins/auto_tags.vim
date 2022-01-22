let g:auto_ctags = 1 " let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn'] " let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags_tags_name = 'tags' " Create the tags name, default tags
let g:auto_ctags_tags_args = [
    '--tag-relative=yes',
    '--recurse=yes',
    '--sort=yes',
    '--exclude=.git',
    '--exclude=.github',
    '--exclude=.github_src',
    '--exclude=.vim', 
    '--exclude=.vscode', 
    '--exclude=android',
    '--exclude=ios',
    '--exclude=node_modules',
    '--exclude=others',
] " Create the ctags args, default --tag-relative --recurse --sort=yes
let g:auto_ctags_set_tags_option = 1 " Call automatically :CtagsSetTagsOption when BufNewFile and BufRead are triggered, default 0
let g:auto_ctags_warn_once = 1 " Show all warning messages only once, default 0

