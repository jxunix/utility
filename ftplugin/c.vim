"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType c setlocal textwidth=80
autocmd FileType c setlocal formatoptions+=t
autocmd FileType c let &colorcolumn=join(range(81, 300), ",")

autocmd FileType c nnoremap <silent><buffer> <F9>               :call <sid>compileAndRun()<cr>
autocmd FileType c nnoremap <silent><buffer> <space>            :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType c nnoremap <silent><buffer> <localleader>sp    :sp %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<cr>
autocmd FileType c nnoremap <silent><buffer> <localleader>vsp   :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType c inoremap <buffer> { {}<esc>i<cr><esc>O

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>compileAndRun()
    exec "w"
    exec "!g++ % -o %<"
    exec "!./%<"
endfunc
