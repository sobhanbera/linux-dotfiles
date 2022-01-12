" +-----------------------------------------------------+ "
" |                    NVIM MAPPINGS                    |
" +-----------------------------------------------------+ "
let mapleader=" "
" nnoremap <leader>q :q<CR> " clear the current buffer nvim/vim

" toggle or switch between tabs
" nnoremap <F2> :bprevious<CR>
" nnoremap <F3> :bnext<CR>

noremap <leader>o :source $MYVIMRC<CR>:PlugInstall<CR>
nnoremap <leader>vs <Esc>:vs<CR> " split window vertical
nnoremap <leader>hs <Esc>:split<CR> " split window vertical

nnoremap <leader>bN :bprevious<CR> " go to previous buffer
nnoremap <leader>bn :bnext<CR> " goto next buffer
nnoremap <leader>bd :bd<CR> " delete the currentl buffer

nnoremap <F5> :terminal <CR> " open terminal in vim

" nnoremap <silent> <C-s> <Esc>:w<CR> " default universal save shortcut
" nnoremap <silent> <C-z> <Esc>:w<CR> " default universal save shortcut

" vertical navigation macros
" nnoremap 1j 5j
" nnoremap 2j 10j
" nnoremap 3j 15j
" nnoremap 4j 20j
" nnoremap 5j 25j

" nnoremap 1k 5k
" nnoremap 2k 10k
" nnoremap 3k 15k
" nnoremap 4k 20k
" nnoremap 5k 25k

" imp tab editing configs...
nnoremap <C-t> :tabnew<CR>
nnoremap <C-t><C-j> :tabnext<CR>
nnoremap <C-t><C-k> :tabprevious<CR>
nnoremap <C-w> :bd<CR>
" in above shortcut instead of :tabclose this command we are deleting the
" buffer because we need that no tab exists after it is once close
nnoremap <leader>T :tabprevious<CR>
nnoremap <leader>t :tabnext<CR>

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" disabling the arrow keys for some time
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"|         MANY USEFUL MAPPINGS FOR DEVELOPERS          |"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving lines of text from one position to adjacent line position
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1m<CR>==a
inoremap <C-k> <esc>:m .-2m<CR>==a
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==

" Undo breaks throughout any code characters
inoremap \@ \@<c-g>u
inoremap \- \-<c-g>u
inoremap \+ \+<c-g>u
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap / /<c-g>u
inoremap : :<c-g>u

" mutation of Jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" keeping the current line at center when searching
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv

" sessions helper mappings
nnoremap <leader>mks :mks! nvim-session.sobhanbera

" mappings for copy and paste purpose...
" below are some of the developer specific shortcuts...
" just to fasten the coding proccess much more...
vnoremap y "+y
nnoremap Y y$
nnoremap y "+yg
nnoremap yy "+yy
nnoremap p "+p
nnoremap P "+P
vnoremap d "+x
nnoremap dd "+dd
" when pressed D not just delete it but also save it to register
nnoremap D v$"+x
" same as above but deleting some different part of the file
nnoremap dG VG"+x
" like any other capital letter command
nnoremap V v$
