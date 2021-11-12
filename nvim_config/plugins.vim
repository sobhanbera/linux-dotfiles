" Plugins and internal plugs....
call plug#begin()

" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/neovim/nvim-lspconfig' " NVIM LSP CONFIG
Plug 'https://github.com/glepnir/lspsaga.nvim' " saga for lsp to show popup msgs
Plug 'https://github.com/hrsh7th/nvim-compe' " Best autocompletion plugin

" since we are using lsp support and virtual texts by it so no need of this plugin....
" Plug 'https://github.com/metakirby5/codi.vim' " virtual text output

Plug 'https://github.com/sbdchd/neoformat' " file format but currently not in use
" Plug 'https://github.com/Chiel92/vim-autoformat' " file formatter but commented
" this file formatter is in use currently
Plug 'https://github.com/prettier/vim-prettier', { 
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'https://github.com/nvim-lua/plenary.nvim' " Lua module for asynchronous programming using coroutines
Plug 'https://github.com/nvim-telescope/telescope.nvim' " highly extendable fuzzy finder
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " awesome syntax
Plug 'https://github.com/ray-x/lsp_signature.nvim' " mainly for function signatures

Plug 'https://github.com/morhetz/gruvbox' " theme or colorscheme
Plug 'https://github.com/mhinz/vim-startify' " vim start window UI provider
Plug 'https://github.com/itchyny/lightline.vim' " vim bottom bar

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " vim comment link helper

Plug 'https://github.com/tpope/vim-fugitive' " git useful plugins
Plug 'https://github.com/airblade/vim-gitgutter' " git useful plugins
Plug 'https://github.com/itchyny/vim-gitbranch' " git useful plugins

Plug 'https://github.com/ap/vim-css-color' " css colors
Plug 'https://github.com/leafgarland/typescript-vim' " typescript for vim
Plug 'https://github.com/peitalin/vim-jsx-typescript' " jsx + ts
Plug 'https://github.com/lifepillar/pgsql.vim' " sql syntax

Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdtree' " file system
Plug 'https://github.com/kassio/neoterm' " terminal for vim

Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder
Plug 'https://github.com/junegunn/fzf.vim' " fuzzy finder

Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

Plug 'https://github.com/szw/vim-maximizer' " window maximizer

Plug 'https://github.com/puremourning/vimspector' " debugger
Plug 'https://github.com/janko/vim-test' " testing 
Plug 'https://github.com/sirver/ultisnips' " snippets
Plug 'https://github.com/frazrepo/vim-rainbow' " rainbow brackets
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/kana/vim-repeat' " helps to reapeat keys press
Plug 'https://github.com/chun-yang/auto-pairs' " auto complete the pair of brackets, [], {}, (), '', "", etc
Plug 'https://github.com/alvan/vim-closetag' " close tags
Plug 'https://github.com/mileszs/ack.vim' " search tool
Plug 'https://github.com/wellle/context.vim'
Plug 'https://github.com/mattesgroeger/vim-bookmarks'

Plug 'https://github.com/christoomey/vim-tmux-navigator' " ctrl-h, ctrl-k, ctrl-l, ctrl-j to navigate and more
Plug 'https://github.com/itchyny/vim-cursorword' " highlight all words that are matching the word at cursor

Plug 'https://github.com/mattn/emmet-vim' " emmets
Plug 'https://github.com/vimwiki/vimwiki' " wikis

" Plug 'https://github.com/psliwka/vim-smoothie' " smooth vim movements
" Plug 'https://github.com/wakatime/vim-wakatime' " wakatime a developer statistics provider

call plug#end()
