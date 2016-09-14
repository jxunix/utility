"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType cpp let &colorcolumn=join(range(81, 300), ",")
autocmd FileType cpp setlocal textwidth=80
autocmd FileType cpp setlocal formatoptions+=t

autocmd FileType cpp nnoremap <buffer> <space>          :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <buffer> <localleader>sp  :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <buffer> <localleader>vsp :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType cpp inoremap <buffer> { {}<esc>i<cr><esc>O
