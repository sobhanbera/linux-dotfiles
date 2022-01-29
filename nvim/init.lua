local modules = {
    "sobhanbera.mappings",
    "sobhanbera.utils",
    "sobhanbera.plugins",
    "sobhanbera.setters",
    "sobhanbera.ui",
    "sobhanbera.prints"
}

for _, module in ipairs(modules) do
    local ok, error = require(module)
    if not ok then
        error("Error loading ".. module .. "\n\n" .. error)
    end
end

USER = vim.fn.expand('$USER')
vim.cmd('source '.. '/home/' .. USER .. '/.config/nvim/lua/config/markdown_preview.vim')
vim.cmd('source '.. '/home/' .. USER .. '/.config/nvim/lua/config/startify.vim')
-- vim.cmd('source '.. nvimrc .. '/lua/config/startify.vim')
