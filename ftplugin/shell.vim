"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType sh let &colorcolumn=join(range(81, 300), ",")
autocmd FileType sh setlocal textwidth=80

autocmd FileType sh nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>

autocmd FileType sh iabbrev #-- #-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:compileAndRun()
	exec "w"
	exec "!bash %"
endfunc
