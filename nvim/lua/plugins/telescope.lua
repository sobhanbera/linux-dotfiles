-- +-----------------------------------------------------+
-- |                    TELESCOPE CONFIG                 |
-- +-----------------------------------------------------+
local actions = require("telescope.actions")
local telescope = require("telescope")
telescope.setup({
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = "🔍 ",
		color_devicons = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		theme = "get_dropdown",
		mappings = {
			i = {
				["<C-x>"] = false,
				["<C-q>"] = actions.send_to_qflist,
			},
		},
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
})
telescope.load_extension("fzy_native")

local map = require("sobhanbera.mappings").map
map(
	"n",
	"<leader>f",
	"<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({ prompt_title = '< Find Git File >' }))<CR>"
) -- git files
map(
	"n",
	"<leader>ff",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '< Search Files >' }))<cr>"
) -- find any file
map(
	"n",
	"<leader>gr",
	"<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({ prompt_title = '< Search for code >' }))<cr>"
) -- find any text throughout the codebase
map(
	"n",
	"<leader>fh",
	"<cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({ prompt_title = '< Find Tags >' }))<cr>"
) -- search for tags
map(
	"n",
	"<leader>cs",
	"<cmd>lua require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({ prompt_title = '< Set Colorscheme >' }))<cr>"
) -- pick color scheme
map(
	"n",
	"<leader>'",
	"<cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({ prompt_title = '< Find Marks >' }))<cr>"
) -- bookmarks
map(
	"n",
	"<leader>/",
	"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ prompt_title = '< Find Text In Current File >' }))<CR>"
) -- find in current buffer or opened file
map(
	"n",
	"<leader>bf",
	"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ prompt_title = '< Search Buffers >' }))<cr>"
) -- find buffer

map(
	"n",
	"<leader>vim",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '< Vim Configs >', cwd = '~/.config/nvim', hidden = true, theme}))<CR>"
) -- search files in vim config folder
map(
	"n",
	"<leader>co",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '< Find In Codes >', cwd = '~/Documents/Codes', hidden = true, theme}))<CR>"
) -- search files in CP
