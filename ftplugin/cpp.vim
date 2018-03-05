autocmd FileType cpp nnoremap <silent><F9>             :call <sid>compileAndRun()<cr>
autocmd FileType cpp nnoremap <silent><space>          :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <silent><localleader>sp  :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <silent><localleader>vsp :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType cpp inoremap { {}<esc>i<cr><esc>O

func! <sid>compileAndRun()
    exec "w"
    exec "!g++ % -o %<"
    exec "!./%<"
endfunc
