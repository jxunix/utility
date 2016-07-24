"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd BufNewFile *.r,*.R call s:initTitle()

autocmd FileType r nnoremap <buffer> <F2> :call <SID>setTitle()<cr>
autocmd FileType r nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>
autocmd FileType r inoremap <buffer> { {}<esc>i<cr><esc>O

autocmd FileType r iabbrev #-- #-------------------------------------------------------------------------------<cr>#<cr>#-------------------------------------------------------------------------------

autocmd FileType r setlocal textwidth=80
autocmd FileType r let &colorcolumn=join(range(81, 300), ",")

"-------------------------------------------------------------------------------
" Function Definition
"-------------------------------------------------------------------------------
func! s:initTitle()
	call setline(1, "\#")
	call append(line("."), "\# Filename: ".expand("%"))
	call append(line(".")+1, "\# Author: Jun Xu")
	call append(line(".")+2, "\# Email: junx@cs.bu.edu")
	call append(line(".")+3, "\# Created Time: ".strftime("%c"))
	call append(line(".")+4, "\# Description: ")
	call append(line(".")+5, "\#")
	call append(line(".")+6, "")
endfunc

func! s:setTitle()
	normal! ggO
	call setline(1, "\#")
	call append(line("."), "\# Filename: ".expand("%"))
	call append(line(".")+1, "\# Author: Jun Xu")
	call append(line(".")+2, "\# Email: junx@cs.bu.edu")
	call append(line(".")+3, "\# Created Time: ".strftime("%c"))
	call append(line(".")+4, "\# Description: ")
	call append(line(".")+5, "\#")
	call append(line(".")+6, "")
endfunc

func! s:compileAndRun()
	exec "w"
	exec "!R --slave -f %"
endfunc
