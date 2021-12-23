" +-----------------------------------------------------+ "
" |                    ALL LSP CONFIG                   |
" +-----------------------------------------------------+ "

let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy'] " to use this strategy...
lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- " +-----------------------------------------------------+ "
    -- " |                LSP SIGNATURE CONFIG                 |
    -- " +-----------------------------------------------------+ "
    cfg = {
        debug = false, -- set to true to enable debug logging
        log_path = "debug_log_file_path", -- debug log path
        verbose = false, -- show debug line number

        bind = true, -- This is mandatory, otherwise border config won't get registered.
                    -- If you want to hook lspsaga or other signature handler, pls set to false
        doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                        -- set to 0 if you DO NOT want any API comments be shown
                        -- This setting only take effect in insert mode, it does not affect signature help in normal
                        -- mode, 10 by default

        floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

        floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
        -- will set to true when fully tested, set to false will use whichever side has more space
        -- this setting will be helpful if you do not want the PUM and floating win overlap
        fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
        hint_enable = true, -- virtual hint enable
        hint_prefix = "🐼 ",  -- Panda for parameter
        hint_scheme = "String",
        use_lspsaga = false,  -- set to true if you want to use lspsaga popup
        hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
        max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
                        -- to view the hiding contents
        max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
        handler_opts = {
            border = "rounded"   -- double, rounded, single, shadow, none
        },

        always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

        auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
        extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
        zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

        padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc

        transparency = nil, -- disabled by default, allow floating win transparent value 1~100
        shadow_blend = 36, -- if you using shadow as border use this set the opacity
        shadow_guibg = 'Black', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
        timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
        toggle_key = nil -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
    }
    require'lsp_signature'.setup(cfg) -- no need to specify bufnr if you don't use toggle_key
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
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>dd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- " +-----------------------------------------------------+ "
-- " |                 ATTACHING DIFF LSs                  |
-- " |                  LANGUAGE SERVERS                   |
-- " +-----------------------------------------------------+ "
local servers = { 'tsserver', 'pyright', 'html', 'emmet_ls', 'vimls', 'eslint', 'dockerls', 'jsonls', 'emmet_ls'} --, 'cssmodules_ls'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
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
        prompt_prefix = " > ",
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
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Git File >" }))<CR>
" find any file
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Search Files >" }))<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({ prompt_title = "< Search for code >" }))<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({ prompt_title = "< Find Tags >" }))<cr>
" pick color scheme
nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({ prompt_title = "< Set Colorscheme >" }))<cr>
" bookmarks
nnoremap <leader>' <cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({ prompt_title = "< Find Marks >" }))<cr>
" find in current buffer or opened file
nnoremap <leader>/ <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ prompt_title = "< Find Text In Current File >" }))<CR>
" find buffer
nnoremap ; <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ prompt_title = "< Search Buffers >" }))<cr>


" +-----------------------------------------------------+ "
" |  SOME FILE/PROJECT SPECIFIC TELESCOPE CONFIG        |
" +-----------------------------------------------------+ "
 " search files in vim config folder
nnoremap <leader>vim <cmd>lua require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Vim Config File >", cwd = '~/.config/nvim', hidden = true, theme}))<CR>
" search files in CP
nnoremap <leader>co <cmd>lua require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({ prompt_title = "< Find Vim Config File >", cwd = '~/Documents/Codes', hidden = true, theme}))<CR>
