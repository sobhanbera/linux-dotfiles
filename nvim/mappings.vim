" +-----------------------------------------------------+ "
" |                    NVIM MAPPINGS                    |
" +-----------------------------------------------------+ "
let mapleader=" "
" nnoremap <leader>q :q<CR> " clear the current buffer nvim/vim

" toggle or switch between tabs
nnoremap <F2> :bprevious<CR>
nnoremap <F3> :bnext<CR>

nnoremap <leader>vs <Esc>:vs<CR> " split window vertical
nnoremap <leader>hs <Esc>:split<CR> " split window vertical

vnoremap y "+y
nnoremap Y y$

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

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" disabling the arrow keys for some time
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

noremap <leader>o :source $MYVIMRC<CR>:PlugInstall<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"|         MANY USEFUL MAPPINGS FOR DEVELOPERS          |"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving lines of text from one position to adjacent line position
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1m<CR>==
inoremap <C-k> <esc>:m .-2m<CR>==
nnoremap <leader>K :m .-2<CR>==
nnoremap <leader>J :m .+1<CR>==

" Undo breaks throughout any code characters
inoremap \@ \@<c-g>u
inoremap \- \-<c-g>u
inoremap \+ \+<c-g>u
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap / /<c-g>u

" mutation of Jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" keeping the current line at center when searching
nnoremap n nzzzv
nnoremap * nzzzv
nnoremap N Nzzzv
nnoremap # Nzzzv
nnoremap J msJ`s
