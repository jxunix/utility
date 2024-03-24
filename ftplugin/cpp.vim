                                         "------------
                                         " AUTOCOMMAND
                                         "------------

autocmd FileType cpp setlocal textwidth=80
autocmd FileType cpp setlocal formatoptions+=t
autocmd FileType cpp setlocal nowrap
autocmd FileType cpp let &colorcolumn=join(range(81, 300), ",")

autocmd FileType cpp nnoremap <silent><space>     :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <silent><leader>sp  :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>
autocmd FileType cpp nnoremap <silent><leader>vsp :vsp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

autocmd FileType cpp noremap  <buffer><leader>f :py3f /usr/share/clang/clang-format-8/clang-format.py<cr>
autocmd FileType cpp inoremap <buffer><leader>f <c-o>:pyf /usr/share/clang/clang-format-8/clang-format.py<cr>

autocmd FileType cpp inoremap { {}<esc>i<cr><esc>O
