-- +-----------------------------------------------------+
-- |                    NULL-LS CONFIG                   |
-- +-----------------------------------------------------+
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		-- formatting.cland_format,
		-- formatting.prettier.with({
		-- 	extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		-- }),
		formatting.prettier, -- without any extra args the formatting is very fast like instantly without any pauses
		formatting.black.with({
			extra_args = { "--fast" },
		}),
		formatting.stylua,
	},
})

local map = require("sobhanbera.mappings").map
map("n", "<leader>df", ":lua vim.lsp.buf.formatting()<CR>")
map("n", "df", ":lua vim.lsp.buf.formatting()<CR>")

-- save and format for cpp and lua since they are very fast in formatting
-- but there is a need to save the file again
vim.cmd("autocmd BufWritePost *.cpp,*.lua :lua vim.lsp.buf.formatting()")

-- auto format files
-- local event = "BufWritePost"
-- local filetypes = "*.js,*.ts,*.tsx,*.jsx,*.css,*.scss,*.lua"
-- local formattingCommand = "lua vim.lsp.buf.formatting_seq_sync()"
-- vim.cmd("autocmd " .. event .. " " .. filetypes .. " " .. formattingCommand) -- formmating a file when saved
-- print("autocmd " .. event .. " " .. filetypes .. " " .. formattingCommand)
