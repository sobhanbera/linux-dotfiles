vim.cmd("highlight BookmarkSign ctermbg=NONE ctermfg=256 guibg=#000000")
vim.cmd("highlight BookmarkLine ctermbg=256 ctermfg=NONE")

vim.g.bookmark_sign = "♥"
vim.g.bookmark_annotation_sign = "##"
vim.g.bookmark_save_per_working_dir = 1
vim.g.bookmark_highlight_lines = 1

local map = require("sobhanbera.mappings").map

map("n", "<leader>bn", ":BookmarkNext<CR>")
map("n", "<leader>bp", ":BookmarkPrev<CR>")
