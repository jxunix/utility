"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType markdown nnoremap <silent><buffer> <F9>             :call <sid>codegen()<cr>

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>codegen()
    exec "w"
    exec "!~/Documents/script/codegen.py % -o %<.h"
    exec "e %<.h"
endfunc
