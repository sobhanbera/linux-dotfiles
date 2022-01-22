-- +-----------------------------------------------------+
-- |                    NULL-LS CONFIG                   |
-- +-----------------------------------------------------+
local builtins = require("null-ls.builtins")
local formatting = builtins.formatting
formatting.prettier.with({
	command = "prettier",
	args = {"--stdin-filepath", "$FILENAME"},
    extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--trailing-comma", "--bracket-same-line", "--html-whitespace-sensitivity", "--prose-wrap" },
})