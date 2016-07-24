"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd BufNewFile *.py call s:initTitle()

autocmd FileType python nnoremap <buffer> <F2> :call <SID>setTitle()<cr>
autocmd FileType python nnoremap <buffer> <F9> :call <SID>compileAndRun()<cr>

autocmd FileType python iabbrev #-- #-------------------------------------------------------------------------------<cr>#<cr>#-------------------------------------------------------------------------------

autocmd FileType python setlocal textwidth=80
autocmd FileType python let &colorcolumn=join(range(81, 300), ",")

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
	exec "!python %"
endfunc
