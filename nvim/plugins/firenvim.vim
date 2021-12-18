if exists('g:started_by_firenvim')
    
    " no statusbar
    set laststatus=0
    " disabling firenvim for some websites...
    let fc = g:firenvim_config['localSettings']
    let fc['https://web.whatsapp.com'] = { 'takeover': 'never', 'priority': 1 }

    " syntax recognization for different websites
    augroup BROWSER
        au BufEnter github.com_*.txt set filetype=markdown
    augroup END

else
    set laststatus=2
endif



