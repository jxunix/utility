"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd BufNewFile *.c call s:initTitle()

autocmd FileType c nnoremap <buffer> <F2> :call <SID>setTitle()<cr>
autocmd FileType c nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>
autocmd FileType c inoremap <buffer> { {}<esc>i<cr><esc>O
autocmd FileType c nnoremap <buffer> <space> :e %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType c nnoremap <buffer> <localleader>sp :sp %:t:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<cr>
autocmd FileType c nnoremap <buffer> <localleader>vsp :vsp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType c iabbrev /* /*<cr><cr>/

autocmd FileType c setlocal textwidth=80
autocmd FileType c let &colorcolumn=join(range(81, 300), ",")

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

func! s:compileAndRun()
	exec "w"
	exec "!g++ % -o %<"
	exec "!./%<"
endfunc
