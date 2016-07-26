"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType java setlocal foldmethod=syntax

autocmd FileType java nnoremap <buffer> <localleader>vf  V/{<cr>%

autocmd FileType java inoremap <buffer> { {}<esc>i<cr><esc>O
