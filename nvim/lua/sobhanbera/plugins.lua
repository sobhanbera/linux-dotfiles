-- +-----------------------------------------------------+
-- |                        PLUGINS                      |
-- +-----------------------------------------------------+
local Plug = vim.fn['plug#']                                                    -- access vim plug...
vim.call('plug#begin', '~/.config/nvim/plugged')
-- +-----------------------------------------------------+ "
-- |           LSP PLUGINS & AUTOCOMPLETE                |
-- +-----------------------------------------------------+ "
Plug 'neovim/nvim-lspconfig'                                                    -- NVIM LSP CONFIG
Plug 'glepnir/lspsaga.nvim'                                                     -- saga for lsp to show popup msgs

Plug 'hrsh7th/nvim-cmp'                                                         -- the exact completion plugin, since nvim-compe is deprecated
Plug 'hrsh7th/cmp-nvim-lsp'                                                     -- lsp completion
Plug 'hrsh7th/cmp-buffer'                                                       -- for buffer completion
Plug 'hrsh7th/cmp-path'                                                         -- path completion
Plug 'hrsh7th/cmp-cmdline'                                                      -- for command completion
Plug 'hrsh7th/cmp-vsnip'                                                        -- snippets completion

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'                                                    -- Lua module for asynchronous programming using coroutines
Plug 'nvim-telescope/telescope.nvim'                                            -- highly extendable fuzzy finder
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})                -- awesome syntax
Plug 'ray-x/lsp_signature.nvim'                                                 -- mainly for function signatures
Plug 'nvim-lualine/lualine.nvim'                                                -- statusbar structure update ui
Plug 'akinsho/bufferline.nvim'                                                  -- ui
Plug 'onsails/lspkind-nvim'                                                     -- auto complete menu icons
Plug 'jose-elias-alvarez/null-ls.nvim'

-- +-----------------------------------------------------+ "
-- |                    GITHUB COPILOT                   |
-- +-----------------------------------------------------+ "
Plug 'github/copilot.vim'                                                       -- The Github Copilot

-- +-----------------------------------------------------+ "
-- |                    UI COMPONENTS                    |
-- +-----------------------------------------------------+ "
Plug 'kyazdani42/nvim-tree.lua'                                                 -- file system build with lua
Plug 'Xuyuanp/nerdtree-git-plugin'                                              -- git plugin for nerdtree nvim
Plug 'kyazdani42/nvim-web-devicons'                                             -- required for tab plugin
Plug 'ryanoasis/vim-devicons'                                                   -- Developer Icons seperate
Plug 'lukas-reineke/indent-blankline.nvim'                                      -- indentation for blank lines
Plug 'jiangmiao/auto-pairs'                                                     -- just want to do it manually
Plug 'francoiscabrol/ranger.vim'                                                -- ranger file manager for vim
Plug 'folke/todo-comments.nvim'                                                 -- TODO highlighter
Plug ('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })    -- plugin to preview markdown code
Plug 'terryma/vim-multiple-cursors'                                             -- CTRL + N for multiple cursors
Plug 'szw/vim-maximizer'                                                        -- window maximizer
Plug 'preservim/tagbar'                                                         -- Tagbar for code navigation
Plug 'mhinz/vim-startify'                                                       -- vim start window UI provider
Plug 'tpope/vim-surround'                                                       -- Surrounding ysw)
Plug 'tpope/vim-commentary'                                                     -- vim comment link helper

-- +-----------------------------------------------------+ "
-- |                     COLORSCHEMES                    |
-- +-----------------------------------------------------+ "
Plug 'morhetz/gruvbox'                                                          -- theme or colorscheme
Plug 'ayu-theme/ayu-vim'                                                        -- ayu colorscheme
Plug 'sts10/vim-pink-moon'

-- +-----------------------------------------------------+ "
-- |                   SYNTAX AND COLORS                 |
-- +-----------------------------------------------------+ "
Plug 'ap/vim-css-color'                                                         -- css colors more faster than the below plugin
Plug 'lilydjwg/colorizer'                                                       -- highlight where every color hash or code is found in the entire codebase or files
Plug 'peitalin/vim-jsx-typescript'                                              -- jsx + ts
Plug 'itchyny/vim-cursorword'                                                   -- highlight all words that are matching the word at cursor

-- +-----------------------------------------------------+ "
-- |                 GIT/GITHUB RELATIVE                 |
-- +-----------------------------------------------------+ "
Plug 'tpope/vim-fugitive'                                                       -- git useful plugins
Plug 'airblade/vim-gitgutter'                                                   -- git useful plugins
Plug 'itchyny/vim-gitbranch'                                                    -- git useful plugins

-- +-----------------------------------------------------+ "
-- |                       UTILITIES                     |
-- +-----------------------------------------------------+ "
Plug 'christoomey/vim-tmux-navigator'                                           -- ctrl-h, ctrl-k, ctrl-l, ctrl-j to navigate and more
Plug 'kana/vim-repeat'                                                          -- helps to reapeat keys press
Plug 'mattesgroeger/vim-bookmarks'                                              -- vim bookmark plugin
Plug 'easymotion/vim-easymotion'                                                -- n and N was not working add this or remove the easymotion.vim plugin file. actually this plugin contains a map with n/N remove them so that you could navigate easily
Plug 'psliwka/vim-smoothie'                                                     -- smooth vim movements
Plug 'farmergreg/vim-lastplace'                                                 -- vim lastplace help to directly edit the last position of any file
-- Plug 'alvan/vim-closetag'                                                       -- auto close tags like html
Plug 'machakann/vim-sandwich'                                                   -- surrounds text
Plug 'junegunn/goyo.vim'                                                        -- no distraction now..
Plug 'liuchengxu/vim-which-key'                                                 -- plugins key-mappings helper
Plug 'jbyuki/nabla.nvim'                                                        -- Math based plugin

-- +-----------------------------------------------------+ "
-- |                    SNIPPETS & CODES                 |
-- +-----------------------------------------------------+ "
Plug 'sirver/ultisnips'                                                         -- snippets
Plug 'mattn/emmet-vim'															-- emmplugins.luets plugin
Plug 'quangnguyen30192/cmp-nvim-ultisnips'                                      -- required by nvim-cmp for completion
Plug 'vimwiki/vimwiki'                                                          -- wikis

-- +-----------------------------------------------------+ "
-- |                 TESTING & DEBUGGING                 |
-- +-----------------------------------------------------+ "
-- Plug 'puremourning/vimspector'                                               -- debugger
-- Plug 'janko/vim-test'                                                        -- testing

-- +-----------------------------------------------------+ "
-- |                 DEVELOPER SPECIFIC                  |
-- +-----------------------------------------------------+ "
Plug 'wakatime/vim-wakatime'                                                    -- wakatime a developer statistics provider

-- +-----------------------------------------------------+ "
-- |                 EXTERNAL USE PLUGINS                |
-- +-----------------------------------------------------+ "
Plug ('glacambre/firenvim', { ['do'] = vim.fn['firenvim#install(0)'] })         -- for browser nvim
vim.call('plug#end')

-- initializing...
-- all the plugins config...
require('plugins.bookmark')
require('plugins.bufferline')
-- require('plugins.closetag')
require('plugins.commentary')
require('plugins.COPILOT')
require('plugins.easymotion')
require('plugins.fugitive')
require('plugins.indent_blankline')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.luasaga')
require('plugins.maximizer')
require('plugins.nabla')
require('plugins.neoterm')
require('plugins.nvim_tree')
require('plugins.rainbow')
require('plugins.ranger')
require('plugins.tagbar')
require('plugins.telescope')
require('plugins.todo_comments')
require('plugins.treesitter')
require('plugins.ultisnips')
require('plugins.vimspector')