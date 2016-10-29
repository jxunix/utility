"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType r let &colorcolumn=join(range(81, 300), ",")

autocmd FileType r nnoremap <silent><buffer> <F9> :call <SID>compileAndRun()<cr>

autocmd FileType r inoremap <buffer> { {}<esc>i<cr><esc>O

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <SID>compileAndRun()
	exec "w"
	exec "!R --slave -f %"
endfunc
