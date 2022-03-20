local map = require("sobhanbera.mappings").map
map("n", "<leader>ce", ":Copilot enable<CR>")
map("n", "<leader>cd", ":Copilot disable<CR>")
-- vim.cmd('autocmd VimEnter * Copilot disable')
