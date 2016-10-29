"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType xml nnoremap <silent><buffer> <F9> :call <sid>checkFormat()<cr>

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>checkFormat()
    exec "w"
    exec "!xmllint --noout %"
endfunc
