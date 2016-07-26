"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType h setlocal foldmethod=syntax

autocmd FileType h nnoremap <buffer> <space> :e %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>sp :sp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>vsp :vsp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <buffer> <localleader>vf  V/{<cr>%

autocmd FileType h inoremap <buffer> { {}<esc>i<cr><esc>O
