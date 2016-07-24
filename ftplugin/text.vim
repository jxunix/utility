"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType text setlocal textwidth=120
autocmd FileType text let &colorcolumn=join(range(121, 300), ",")
