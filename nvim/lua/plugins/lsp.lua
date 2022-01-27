-- +-----------------------------------------------------+
-- |                LSP SIGNATURE CONFIG                 |
-- +-----------------------------------------------------+
local on_attach = function(client, bufnr)
    cfg = {
        debug = false,
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
    local lsp_signature = require('lsp_signature')
    lsp_signature.setup(cfg)
    lsp_signature.on_attach(cfg, bufnr)

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
end

-- " +-----------------------------------------------------+ "
-- " |                LSP KIND ICON CONFIG                 |
-- " +-----------------------------------------------------+ "
local lspkind = require('lspkind')                                      -- lsp kind icons for completion menu
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

-- +-----------------------------------------------------+
-- |                  NVIM CMP CONFIGS                   |
-- +-----------------------------------------------------+
local cmp = require('cmp')                                              -- completion plugin
cmp.setup({
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "ultisnips", keyword_length = 3 },
        { name = "buffer", keyword_length = 4 },
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
            c = function()
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
})

-- Use buffer source for `/` & `:` (if `native_menu` is enabled both the below won't work anymore).
-- cmp.setup.cmdline('/', { sources = { {name = 'buffer'} } })
-- cmp.setup.cmdline(':', { sources = cmp.config.sources({ {name = 'path'} }, { {name = 'cmdline'} }) })

-- " +-----------------------------------------------------+ "
-- " |                 ATTACHING DIFF LSs                  |
-- " |                  LANGUAGE SERVERS                   |
-- " | TS,JS,CPP,Java,CSS,HTML,VIM,JSON,DOCKER,PYTHON,ETC. |
-- " +-----------------------------------------------------+ "
local nvim_lsp = require('lspconfig')                                   -- official lsp config :)
local servers = { 'tsserver', 'pyright', 'html', 'cssls', 'emmet_ls', 'vimls', 'eslint', 'dockerls', 'jsonls', 'emmet_ls'} --, 'cssmodules_ls'}
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    }
end
-- auto format files
vim.cmd('autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx,*.html,*.css,*.scss lua vim.lsp.buf.formatting()')      -- formmating a file when saved

-- " +-----------------------------------------------------+ "
-- " |            ATTACHING LUA LANG SERVER                |
-- " +-----------------------------------------------------+ "
USER = vim.fn.expand('$USER')
local sumneko_root_path = "/home/" .. USER .. "/.config/nvim/langserver/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
        debounce_text_changes = 150,
    },
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}
vim.g.completion_matching_strategy_list = "['exact', 'substring', 'fuzzy']"
