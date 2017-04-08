"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType tex nnoremap <silent><buffer> <F9> :call <sid>compileAndRun()<cr>

autocmd FileType tex command! Clean :call <sid>clean()

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <sid>compileAndRun()
	exec "w"
	exec "!latexmk -pdf -pv %"
endfunc

func! <sid>clean()
	exec "!latexmk -c"
	exec "!rm -rf %<.bbl"
endfunc
