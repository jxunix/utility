"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd BufNewFile *.h call s:initTitle()

autocmd FileType h nnoremap <buffer> <F2> :call <SID>setTitle()<cr>
autocmd FileType h inoremap <buffer> { {}<esc>i<cr><esc>O
autocmd FileType h nnoremap <buffer> <space> :e %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>sp :sp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>vsp :vsp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType h iabbrev /* /*<cr><cr>/

autocmd FileType h setlocal textwidth=80
autocmd FileType h let &colorcolumn=join(range(81, 300), ",")

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
