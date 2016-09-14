"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType java let &colorcolumn=join(range(81, 300), ",")
autocmd FileType java setlocal textwidth=80
autocmd FileType java setlocal formatoptions+=t

autocmd FileType java inoremap <buffer> { {}<esc>i<cr><esc>O
