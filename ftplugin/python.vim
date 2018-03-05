autocmd FileType python nnoremap <silent><F9> :call <sid>compileAndRun()<cr>

func! <sid>compileAndRun()
    exec "w"
    exec "!python %"
endfunc
