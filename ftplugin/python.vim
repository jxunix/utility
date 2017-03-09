"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType python let &colorcolumn=join(range(81, 300), ",")

autocmd FileType python nnoremap <silent><buffer> <F9> :call <sid>compileAndRun()<cr>

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>compileAndRun()
    exec "w"
    exec "!python %"
endfunc
