" +-----------------------------------------------------+ "
" |                    ALL LSP CONFIG                   |
" +-----------------------------------------------------+ "

let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy'] " to use this strategy...
lua << EOF
local nvim_lsp = require('lspconfig')                                   -- official lsp config :)
local cmp = require('cmp')                                              -- completion plugin
local lspkind = require('lspkind')                                      -- lsp kind icons for completion menu

-- " +-----------------------------------------------------+ "
-- " |                LSP SIGNATURE CONFIG                 |
-- " +-----------------------------------------------------+ "
local on_attach = function(client, bufnr)
    cfg = {
        debug = true,
        log_path = "debug_log_file_path",
        verbose = false,
        bind = true,
        doc_lines = 10,
        floating_window = true,
        floating_window_above_cur_line = true,
        fix_pos = false,
        hint_enable = true,
        hint_prefix = "🐼 ",
        hint_scheme = "String",
        use_lspsaga = false,
        hi_parameter = "LspSignatureActiveParameter",
        max_height = 12,
        max_width = 120,
        handler_opts = {
            border = "rounded"
        },
        always_trigger = false,
        auto_close_after = 20,
        extra_trigger_chars = {},
        zindex = 50,
        padding = ' ',
        transparency = 100,
        shadow_blend = 36,
        shadow_guibg = '#0a0f14',
        timer_interval = 200,
        toggle_key = '<C-Space>'
    }
    require'lsp_signature'.setup(cfg)
    require'lsp_signature'.on_attach(cfg, bufnr)

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- " +-----------------------------------------------------+ "
    -- " |                        MAPPINGS                     |
    -- " +-----------------------------------------------------+ "
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-m>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>dd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    -- if client.resolved_capabilities.document_formatting then
    --     vim.cmd [[augroup Format]]
    --     vim.cmd [[autocmd! * <buffer>]]
    --     vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]
    --     vim.cmd [[augroup END]]
    -- else
    --     echo 'NOT'
    -- end
end

-- " +-----------------------------------------------------+ "
-- " |                LSP KIND ICON CONFIG                 |
-- " +-----------------------------------------------------+ "
lspkind.init({
    with_text = true,
    preset = 'codicons',
    symbol_map = {
        Text = " ",
        Method = " ",
        Function = " ",
        Constructor = " ",
        Field = "ﰠ ",
        Variable = " ",
        Class = "ﴯ ",
        Interface = " ",
        Module = " ",
        Property = "ﰠ ",
        Unit = "塞 ",
        Value = " ",
        Enum = " ",
        Keyword = " ",
        Snippet = " ",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = "פּ ",
        Event = " ",
        Operator = " ",
        TypeParameter = ""
    },
})

-- " +-----------------------------------------------------+ "
-- " |                  NVIM CMP CONFIGS                   |
-- " +-----------------------------------------------------+ "
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping(
            cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Insert,
                select = true,
            },
            { "i", "c" }
        ),
        ["<c-space>"] = cmp.mapping {
            i = cmp.mapping.complete(),
            c = function(
                _ --[[fallback]]
            )
                if cmp.visible() then
                if not cmp.confirm { select = true } then
                    return
                end
                else
                cmp.complete()
                end
            end,
        },
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "ultisnips", keyword_length = 3 },
        { name = "buffer", keyword_length = 4 },
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,

            function(entry1, entry2)
                local _, entry1_under = entry1.completion_item.label:find "^_+"
                local _, entry2_under = entry2.completion_item.label:find "^_+"
                entry1_under = entry1_under or 0
                entry2_under = entry2_under or 0
                if entry1_under > entry2_under then
                return false
                elseif entry1_under < entry2_under then
                return true
                end
            end,

            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[BUF]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[API]",
                path = "[PATH]",
                ultisnips = "[SNIP]",
            },
        },
    },
})

-- Use buffer source for `/` & `:` (if `native_menu` is enabled both the below won't work anymore).
--[[ cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
]]--

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- " +-----------------------------------------------------+ "
-- " |                 ATTACHING DIFF LSs                  |
-- " |                  LANGUAGE SERVERS                   |
-- " +-----------------------------------------------------+ "
local servers = { 'tsserver', 'pyright', 'html', 'cssls', 'emmet_ls', 'vimls', 'eslint', 'dockerls', 'jsonls', 'emmet_ls'} --, 'cssmodules_ls'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities
    }
end
EOF


" +-----------------------------------------------------+ "
" |                    TELESCOPE CONFIG                 |
" +-----------------------------------------------------+ "
lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " -:> ",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

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
}

require("telescope").load_extension("fzy_native")
EOF

" git files
nnoremap <leader>f <cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Git File >" }))<CR>
" find any file
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Search Files >" }))<cr>
nnoremap <leader>gr <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({ prompt_title = "< Search for code >" }))<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({ prompt_title = "< Find Tags >" }))<cr>
" pick color scheme
nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({ prompt_title = "< Set Colorscheme >" }))<cr>
" bookmarks
nnoremap <leader>' <cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({ prompt_title = "< Find Marks >" }))<cr>
" find in current buffer or opened file
nnoremap <leader>/ <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ prompt_title = "< Find Text In Current File >" }))<CR>
" find buffer
nnoremap ; <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ prompt_title = "< Search Buffers >" }))<cr>
" formmating a file when saved
autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx lua vim.lsp.buf.formatting_seq_sync()


" +-----------------------------------------------------+ "
" |  SOME FILE/PROJECT SPECIFIC TELESCOPE CONFIG        |
" +-----------------------------------------------------+ "
" search files in vim config folder
nnoremap <leader>vim <cmd>lua require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Vim Config File >", cwd = '~/.config/nvim', hidden = true, theme}))<CR>
" search files in CP
nnoremap <leader>co <cmd>lua require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Vim Config File >", cwd = '~/Documents/Codes', hidden = true, theme}))<CR>


" +-----------------------------------------------------+ "
" |     INDENT BLANK LINE PLUGIN CONFIG                 |
" +-----------------------------------------------------+ "
lua << EOF
vim.cmd [[highlight IndentBlanklineContextChar guifg=#60b8d6 gui=nocombine]]
require("indent_blankline").setup {
        -- for example, context is off by default, use this to turn it on
        show_current_context = true,
        show_current_context_start = true,
}
EOF

" highlights
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
highlight! CmpItemAbbrMatch guibg=NONE guifg=#14BC85
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#14BC85
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
highlight! Pmenu guibg=NONE
highlight! PmenuSel guibg=#000000 guifg=#14BC85
highlight! PmenuSbar guibg=NONE
highlight! PmenuThumb guibg=#14BC85
