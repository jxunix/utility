"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType tex let &colorcolumn=join(range(81, 300), ",")
autocmd FileType tex setlocal textwidth=80

autocmd FileType tex nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>
autocmd FileType tex vnoremap <buffer> <localleader>$ <esc>`>a$<esc>`<i$<esc>

autocmd FileType tex iabbrev auto_bmatrix \begin{bmatrix}<cr>\end{bmatrix}
autocmd FileType tex iabbrev auto_center \begin{center}<cr>\end{center}
autocmd FileType tex iabbrev auto_cases \begin{cases}<cr>\end{cases}
autocmd FileType tex iabbrev auto_equation \begin{equation}<cr>\begin{aligned}<cr>\end{aligned}<cr>\end{equation}
autocmd FileType tex iabbrev auto_enumerate \begin{enumerate}<cr>\end{enumerate}
autocmd FileType tex iabbrev auto_tabular \begin{center}<cr>\begin{tabular}{}<cr>\end{tabular}<cr>\end{center}

autocmd FileType tex iabbrev %-- %-------------------------------------------------------------------------------

autocmd FileType tex command! Clean :call <SID>clean()

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! <SID>compileAndRun()
	exec "w"
	exec "!latexmk -pdf -pv %"
endfunc

func! <SID>clean()
	exec "!latexmk -c"
	exec "!rm -rf %<.bbl"
endfunc
