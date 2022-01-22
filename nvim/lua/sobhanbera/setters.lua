-- +-----------------------------------------------------+
-- |                        SETTERS                      |
-- +-----------------------------------------------------+
USER = vim.fn.expand('$USER')

vim.o.exrc = true
vim.o.encoding = "UTF-8"
vim.o.mouse = "a"
vim.o.guicursor=""
vim.o.smarttab = true
vim.o.undodir = "/home/" .. USER .. "/Documents/cache/nvim/undodir"
vim.o.hidden = true
vim.o.cmdheight = 1
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.updatetime = 200
vim.o.shortmess = "c"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.guicursor = "i:ver25-iCursor-blinkwait700-blinkon400-blinkoff250"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.wo.relativenumber = true
vim.wo.nu = true
vim.wo.scrolloff = 4
vim.wo.colorcolumn = "120"
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true
vim.wo.foldmethod = "manual"

vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.textwidth = 120

vim.cmd('set nowrap')
vim.cmd('set noswapfile nobackup undofile')
vim.cmd('set history=10000')
vim.cmd('set backspace=indent,eol,start whichwrap+=<,>,[,]')
vim.cmd('set completeopt-=preview')

-- +-----------------------------------------------------+
-- |                     COLORSCHEME                     |
-- +-----------------------------------------------------+
-- vim.cmd('let g:gruvbox_contrast_dark = "hard"')
vim.cmd('set termguicolors')
vim.cmd('let ayucolor="dark"')
vim.cmd('colorscheme ayu')

vim.cmd('hi Normal guibg=NONE')
vim.cmd('hi CursorLine gui=NONE cterm=NONE')
vim.cmd('hi ColorColumn ctermbg=0 guibg=#3C3835')
vim.cmd('hi OverLength ctermbg=NONE ctermfg=NONE guibg=#000000 guifg=#ADFF2F')

vim.cmd('hi DiagnosticError ctermbg=12 ctermfg=NONE guibg=NONE guifg=#F24B42')
vim.cmd('hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#F5B439')
vim.cmd('hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47')
vim.cmd('hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#14BC85')

