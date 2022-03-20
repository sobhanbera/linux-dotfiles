-- +-----------------------------------------------------+
-- |                    NULL-LS CONFIG                   |
-- +-----------------------------------------------------+
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

-- setting up null ls
null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		}),
		formatting.black.with({
			extra_args = { "--fast" },
		}),
		formatting.stylua,
		-- formatting.uncrustify,
		-- formatting.clang_format,
	},
})

-- auto format files
local event = "BufWritePre"
local filetypes = "*.js,*.ts,*.tsx,*.jsx,*.css,*.scss,*.py,*.lua"
local formattingCommand = "lua vim.lsp.buf.formatting()"

vim.cmd("autocmd " .. event .. " " .. filetypes .. " " .. formattingCommand) -- formmating a file when saved
-- print("autocmd " .. event .. " " .. filetypes .. " " .. formattingCommand)
