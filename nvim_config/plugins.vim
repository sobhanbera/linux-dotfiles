" Plugins and internal plugs....
call plug#begin()

" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/neovim/nvim-lspconfig' " NVIM LSP CONFIG
Plug 'https://github.com/glepnir/lspsaga.nvim' " saga for lsp to show popup msgs
Plug 'https://github.com/hrsh7th/nvim-compe' " Best autocompletion plugin

Plug 'https://github.com/sbdchd/neoformat'
" Plug 'https://github.com/Chiel92/vim-autoformat'
Plug 'https://github.com/prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/ray-x/lsp_signature.nvim'

Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/itchyny/lightline.vim'

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary'

Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/itchyny/vim-gitbranch'

Plug 'https://github.com/ap/vim-css-color' " css colors
Plug 'https://github.com/leafgarland/typescript-vim' " typescript for vim
Plug 'https://github.com/peitalin/vim-jsx-typescript' " jsx + ts
Plug 'https://github.com/lifepillar/pgsql.vim' " sql syntax

Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/szw/vim-maximizer'
Plug 'https://github.com/kassio/neoterm'

Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim'

Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/janko/vim-test'
Plug 'https://github.com/sirver/ultisnips'
Plug 'https://github.com/frazrepo/vim-rainbow'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/kana/vim-repeat'
Plug 'https://github.com/chun-yang/auto-pairs'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/wellle/context.vim'
Plug 'https://github.com/mattesgroeger/vim-bookmarks'

Plug 'https://github.com/christoomey/vim-tmux-navigator' " ctrl-h, ctrl-k, ctrl-l, ctrl-j to navigate and more
Plug 'https://github.com/itchyny/vim-cursorword' " highlight all words that are matching the word at cursor

Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/vimwiki/vimwiki'

" Plug 'https://github.com/psliwka/vim-smoothie' " smooth vim movements
" Plug 'https://github.com/wakatime/vim-wakatime' " wakatime a developer statistics provider

call plug#end()
