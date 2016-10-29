"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType h setlocal textwidth=80
autocmd FileType h setlocal formatoptions+=t
autocmd FileType h let &colorcolumn=join(range(81, 300), ",")

autocmd FileType h nnoremap <silent><buffer> <space>            :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <silent><buffer> <localleader>sp    :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType h nnoremap <silent><buffer> <localleader>vsp   :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType h inoremap <buffer> { {}<esc>i<cr><esc>O
