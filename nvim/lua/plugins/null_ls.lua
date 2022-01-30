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
	},
})

-- auto format files
vim.cmd("autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx,*.html,*.css,*.scss,*.py,*.lua lua vim.lsp.buf.formatting()") -- formmating a file when saved
