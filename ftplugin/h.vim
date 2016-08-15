"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType h nnoremap <buffer> <space> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>sp :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>vsp :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>vf  V/{<cr>%

autocmd FileType h inoremap <buffer> { {}<esc>i<cr><esc>O
