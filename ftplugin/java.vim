"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType java setlocal textwidth=80
autocmd FileType java setlocal formatoptions+=t
autocmd FileType java let &colorcolumn=join(range(81, 300), ",")

autocmd FileType java nnoremap <silent><buffer> <F9>             :call <sid>compileAndRun()<cr>

autocmd FileType java inoremap <buffer> { {}<esc>i<cr><esc>O

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>compileAndRun()
    exec "w"
    exec "!javac %"
    exec "!java %:t:r"
endfunc
