
" NOW MORE MINIMIZED THE NUMBER OF PLUGINS BY COMMENTING THEM

" +-----------------------------------------------------+ "
" |                        PLUGINS                      |
" +-----------------------------------------------------+ "
call plug#begin()
" +-----------------------------------------------------+ "
" |           LSP PLUGINS & AUTOCOMPLETE                |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion & File Formatter
Plug 'https://github.com/neovim/nvim-lspconfig' " NVIM LSP CONFIG
Plug 'https://github.com/glepnir/lspsaga.nvim' " saga for lsp to show popup msgs
Plug 'https://github.com/hrsh7th/nvim-compe' " Best autocompletion plugin

Plug 'https://github.com/nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim' " Lua module for asynchronous programming using coroutines
Plug 'https://github.com/nvim-telescope/telescope.nvim' " highly extendable fuzzy finder
Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim'

Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " awesome syntax
Plug 'https://github.com/ray-x/lsp_signature.nvim' " mainly for function signatures
" Plug 'https://github.com/folke/trouble.nvim' " colored virtual text of LSP with this plugin...
" Plug 'https://github.com/craigemery/vim-autotag' " ctags package must be installed in the system. this plugin is used to jump to definitions
Plug 'https://github.com/soramugi/auto-ctags.vim' " instead of the above plugin we are using this plugin to create auto tags when a file changes
Plug 'https://github.com/nvim-lualine/lualine.nvim' " statusbar structure update
Plug 'https://github.com/onsails/lspkind-nvim' " auto complete menu icons


" +-----------------------------------------------------+ "
" |                    FILE FORMATTER                   |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/dense-analysis/ale' " file formatter
" since we are using lsp support and virtual texts by it so no need of this plugin....
" Plug 'https://github.com/metakirby5/codi.vim' " virtual text output
" Plug 'https://github.com/sbdchd/neoformat' " file format but currently not in use
" Plug 'https://github.com/Chiel92/vim-autoformat' " file formatter but commented
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " this file formatter is in use currently
" Plug 'https://github.com/fsouza/prettierd' " prettier helper to make it fast


" +-----------------------------------------------------+ "
" |                    GITHUB COPILOT                   |
" +-----------------------------------------------------+ "
Plug 'https://github.com/github/copilot.vim' " The Github Copilot


" +-----------------------------------------------------+ "
" |                    UI COMPONENTS                    |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/romgrk/barbar.nvim' " tabview in nvim commented bcz may be causing lags or everytime opens file in new tab buffer
" Plug 'https://github.com/itchyny/lightline.vim' " vim bottom bar
" Plug 'https://github.com/scrooloose/nerdtree' " file system
Plug 'https://github.com/kyazdani42/nvim-tree.lua' " file system build with lua
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' " git plugin for nerdtree nvim
" Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight' " NERD TREE better highligher
" " Plug 'https://github.com/kassio/neoterm' " terminal for vim
Plug 'https://github.com/kyazdani42/nvim-web-devicons' " required for tab plugin
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons seperate
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim' " indentation for blank lines
" Plug 'https://github.com/akinsho/bufferline.nvim'
Plug 'https://github.com/jiangmiao/auto-pairs' " just want to do it manually
Plug 'https://github.com/francoiscabrol/ranger.vim' " ranger file manager for vim
Plug 'https://github.com/folke/todo-comments.nvim' " TODO highlighter
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " plugin to preview markdown code
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/szw/vim-maximizer' " window maximizer
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/mhinz/vim-startify' " vim start window UI provider
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " vim comment link helper


" +-----------------------------------------------------+ "
" |                     COLORSCHEMES                    |
" +-----------------------------------------------------+ "
" " Plug 'https://github.com/morhetz/gruvbox' " theme or colorscheme
" " Plug 'https://github.com/fenetikm/falcon' " falcon colorscheme
Plug 'https://github.com/ayu-theme/ayu-vim' " ayu colorscheme
" " Plug 'https://github.com/cocopon/iceberg.vim' " iceberg colorscheme


" +-----------------------------------------------------+ "
" |                   SYNTAX AND COLORS                 |
" +-----------------------------------------------------+ "
" " Plug 'https://github.com/ap/vim-css-color' " css colors more faster than the below plugin
Plug 'https://github.com/lilydjwg/colorizer' " highlight where every color hash or code is found in the entire codebase or files
" " Plug 'https://github.com/frazrepo/vim-rainbow' " new rainbow brackets
" Plug 'https://github.com/kien/rainbow_parentheses.vim' " old rainbow brackets
" Plug 'https://github.com/leafgarland/typescript-vim' " typescript for vim
" Plug 'https://github.com/peitalin/vim-jsx-typescript' " jsx + ts
" Plug 'https://github.com/lifepillar/pgsql.vim' " sql syntax
" " Plug 'https://github.com/itchyny/vim-cursorword' " highlight all words that are matching the word at cursor


" +-----------------------------------------------------+ "
" |                 GIT/GITHUB RELATIVE                 |
" +-----------------------------------------------------+ "
Plug 'https://github.com/tpope/vim-fugitive' " git useful plugins
Plug 'https://github.com/airblade/vim-gitgutter' " git useful plugins
Plug 'https://github.com/itchyny/vim-gitbranch' " git useful plugins


" +-----------------------------------------------------+ "
" |                       UTILITIES                     |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/kien/ctrlp.vim'
" " Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder
" " Plug 'https://github.com/junegunn/fzf.vim' " fuzzy finder
" Plug 'https://github.com/mileszs/ack.vim' " search tool
" Plug 'https://github.com/wellle/context.vim'
Plug 'https://github.com/christoomey/vim-tmux-navigator' " ctrl-h, ctrl-k, ctrl-l, ctrl-j to navigate and more
Plug 'https://github.com/kana/vim-repeat' " helps to reapeat keys press
Plug 'https://github.com/alvan/vim-closetag' " close tags
Plug 'https://github.com/mattesgroeger/vim-bookmarks'
Plug 'https://github.com/easymotion/vim-easymotion' " n and N was not working add this or remove the easymotion.vim plugin file. actually this plugin contains a map with n/N remove them so that you could navigate easily
Plug 'https://github.com/psliwka/vim-smoothie' " smooth vim movements


" +-----------------------------------------------------+ "
" |                    SNIPPETS & CODES                 |
" +-----------------------------------------------------+ "
Plug 'https://github.com/sirver/ultisnips' " snippets
" Plug 'https://github.com/mattn/emmet-vim' " emmets
Plug 'https://github.com/vimwiki/vimwiki' " wikis


" +-----------------------------------------------------+ "
" |                 TESTING & DEBUGGING                 |
" +-----------------------------------------------------+ "
" " Plug 'https://github.com/puremourning/vimspector' " debugger
" Plug 'https://github.com/janko/vim-test' " testing


" +-----------------------------------------------------+ "
" |                 DEVELOPER SPECIFIC                  |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/wakatime/vim-wakatime' " wakatime a developer statistics provider


" +-----------------------------------------------------+ "
" |                 EXTERNAL USE PLUGINS                |
" +-----------------------------------------------------+ "
" Plug 'https://github.com/glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
call plug#end()

