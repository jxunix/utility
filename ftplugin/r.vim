"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType r let &colorcolumn=join(range(81, 300), ",")
autocmd FileType r setlocal textwidth=80

autocmd FileType r nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>
autocmd FileType r inoremap <buffer> { {}<esc>i<cr><esc>O

autocmd FileType r iabbrev #-- #-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:compileAndRun()
	exec "w"
	exec "!R --slave -f %"
endfunc
