autocmd FileType python nnoremap <silent><F9> :call <sid>run()<cr>

func! <sid>run()
    exec "w"
    exec "!python %"
endfunc
