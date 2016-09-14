"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType python let &colorcolumn=join(range(81, 300), ",")
autocmd FileType python setlocal textwidth=80

autocmd FileType python nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>

autocmd FileType python iabbrev #-- #-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:compileAndRun()
	exec "w"
	exec "!python %"
endfunc
