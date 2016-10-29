"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType sh let &colorcolumn=join(range(81, 300), ",")

autocmd FileType sh nnoremap <silent><buffer> <F9> :call <SID>compileAndRun()<cr>

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <SID>compileAndRun()
	exec "w"
	exec "!bash %"
endfunc
