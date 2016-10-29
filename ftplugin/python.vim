"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType python let &colorcolumn=join(range(81, 300), ",")

autocmd FileType python nnoremap <silent><buffer> <F9> :call <SID>compileAndRun()<cr>

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <SID>compileAndRun()
	exec "w"
	exec "!python %"
endfunc
