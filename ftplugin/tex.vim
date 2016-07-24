"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType tex nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>
autocmd FileType tex vnoremap <buffer> <localleader>$ <esc>`>a$<esc>`<i$<esc>

autocmd FileType tex iabbrev auto_bmatrix \begin{bmatrix}<cr>\end{bmatrix}
autocmd FileType tex iabbrev auto_center \begin{center}<cr>\end{center}
autocmd FileType tex iabbrev auto_cases \begin{cases}<cr>\end{cases}
autocmd FileType tex iabbrev auto_equation \begin{equation}<cr>\begin{aligned}<cr>\end{aligned}<cr>\end{equation}
autocmd FileType tex iabbrev auto_enumerate \begin{enumerate}<cr>\end{enumerate}
autocmd FileType tex iabbrev auto_tabular \begin{center}<cr>\begin{tabular}{}<cr>\end{tabular}<cr>\end{center}

autocmd FileType tex iabbrev %-- %-------------------------------------------------------------------------------<cr>%<cr>%-------------------------------------------------------------------------------

autocmd FileType tex command! Clean :call <SID>clean()

autocmd FileType tex setlocal textwidth=120
autocmd FileType tex let &colorcolumn=join(range(121, 300), ",")

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:compileAndRun()
	exec "w"
	exec "!latexmk -pdf -pv %"
endfunc

func! s:clean()
	exec "!latexmk -c"
	exec "!rm -rf %<.bbl"
endfunc
