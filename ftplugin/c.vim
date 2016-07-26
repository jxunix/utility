"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType c setlocal foldmethod=syntax

autocmd FileType c nnoremap <buffer> <space> :e %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType c nnoremap <buffer> <localleader>sp :sp %:t:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<cr>
autocmd FileType c nnoremap <buffer> <localleader>vsp :vsp %:t:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType c inoremap <buffer> { {}<esc>i<cr><esc>O
