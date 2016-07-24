"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd BufNewFile *.hpp call s:initTitle()

autocmd FileType hpp nnoremap <buffer> <F2> :call <SID>setTitle()<cr>
autocmd FileType hpp inoremap <buffer> { {}<esc>i<cr><esc>O

autocmd FileType hpp iabbrev /* /*<cr><cr>/

autocmd FileType hpp setlocal textwidth=80
autocmd FileType hpp let &colorcolumn=join(range(81, 300), ",")

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:initTitle()
	call setline(1, "/*")
	call append(line("."), " * Filename: ".expand("%"))
	call append(line(".")+1, " * Author: Jun Xu")
	call append(line(".")+2, " * Email: junx@cs.bu.edu")
	call append(line(".")+3, " * Created Time: ".strftime("%c"))
	call append(line(".")+4, " * Description: ")
	call append(line(".")+5, " */")
	call append(line(".")+6, "")
endfunc

func! s:setTitle()
	normal! ggO
	call setline(1, "/*")
	call append(line("."), " * Filename: ".expand("%"))
	call append(line(".")+1, " * Author: Jun Xu")
	call append(line(".")+2, " * Email: junx@cs.bu.edu")
	call append(line(".")+3, " * Created Time: ".strftime("%c"))
	call append(line(".")+4, " * Description: ")
	call append(line(".")+5, " */")
	call append(line(".")+6, "")
endfunc
