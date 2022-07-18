-- +-----------------------------------------------------+
-- |                        PLUGINS                      |
-- +-----------------------------------------------------+
local Plug = vim.fn["plug#"] -- access vim plug...
vim.call("plug#begin", "~/.config/nvim/plugged")
-- +-----------------------------------------------------+ "
-- |           LSP PLUGINS & AUTOCOMPLETE                |
-- +-----------------------------------------------------+ "
Plug("neovim/nvim-lspconfig") -- NVIM LSP CONFIG

Plug("hrsh7th/nvim-cmp") -- the exact completion plugin, since nvim-compe is deprecated
Plug("hrsh7th/cmp-nvim-lsp") -- lsp completion
Plug("hrsh7th/cmp-buffer") -- for buffer completion
Plug("L3MON4D3/LuaSnip") -- snippets
Plug("saadparwaiz1/cmp_luasnip")
Plug("rafamadriz/friendly-snippets")

Plug("nvim-telescope/telescope.nvim") -- highly extendable fuzzy finder

Plug("jose-elias-alvarez/null-ls.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" }) -- awesome syntax
Plug("ray-x/lsp_signature.nvim") -- mainly for function signatures
Plug("nvim-lualine/lualine.nvim") -- statusbar structure update ui
Plug("onsails/lspkind.nvim") -- auto complete menu icons
Plug("dense-analysis/ale") -- not for formatting purpose which is this plugin made for but I use this plugin for declaration shower
-- this plugin shows the description or type of any identifier in the state bar when hovered over any identifier or so
-- so good plugin

-- +-----------------------------------------------------+ "
-- |                    GITHUB COPILOT                   |
-- +-----------------------------------------------------+ "
Plug("github/copilot.vim") -- The Github Copilot

-- +-----------------------------------------------------+ "
-- |                    UI COMPONENTS                    |
-- +-----------------------------------------------------+ "
Plug("kyazdani42/nvim-tree.lua") -- file explorer
Plug("kyazdani42/nvim-web-devicons") -- required for tab plugin
Plug("ryanoasis/vim-devicons") -- Developer Icons seperate
Plug("lukas-reineke/indent-blankline.nvim") -- indentation for blank lines
Plug("jiangmiao/auto-pairs") -- just want to do it manually
Plug("iamcco/markdown-preview.nvim", { ["do"] = "cd app && yarn install" }) -- plugin to preview markdown code
Plug("terryma/vim-multiple-cursors") -- CTRL + N for multiple cursors
Plug("szw/vim-maximizer") -- window maximizer
Plug("tpope/vim-surround") -- Surrounding ysw)
Plug("tpope/vim-commentary") -- vim comment link helper

-- +-----------------------------------------------------+ "
-- |            SYNTAX, COLORS AND SCHEMES               |
-- +-----------------------------------------------------+ "
Plug("ayu-theme/ayu-vim") -- ayu colorscheme
Plug("lilydjwg/colorizer") -- highlight where every color hash or code is found in the entire codebase or files

-- +-----------------------------------------------------+ "
-- |                 GIT/GITHUB RELATIVE                 |
-- +-----------------------------------------------------+ "
Plug("tpope/vim-fugitive") -- git useful plugins
Plug("airblade/vim-gitgutter") -- shows gutters for git

-- +-----------------------------------------------------+ "
-- |                       UTILITIES                     |
-- +-----------------------------------------------------+ "
Plug("christoomey/vim-tmux-navigator") -- ctrl-h, ctrl-k, ctrl-l, ctrl-j to navigate and more
Plug("easymotion/vim-easymotion") -- n and N was not working add this or remove the easymotion.vim plugin file. actually this plugin contains a map with n/N remove them so that you could navigate easily
Plug("psliwka/vim-smoothie") -- smooth vim movements
Plug("farmergreg/vim-lastplace") -- vim lastplace help to directly edit the last position of any file
Plug("wakatime/vim-wakatime") -- wakatime a developer statistics provider
vim.call("plug#end")

-- all the plugins config...
local plugins_config_modules = {
	"plugins.commentary",
	"plugins.easymotion",
	"plugins.fugitive",
	"plugins.indent_blankline",
	"plugins.lsp",
	"plugins.lualine",
	"plugins.maximizer",
	"plugins.null_ls",
	"plugins.nvim_tree",
	"plugins.telescope",
	"plugins.treesitter",
}
-- initializing all the plugins modules...
for _, plugin_module in ipairs(plugins_config_modules) do
	local ok, error = require(plugin_module)
	if not ok then
		error("Error occurred during loading plugin " .. module .. "\n\n" .. error)
	end
end
-- loaded all the plugins now
