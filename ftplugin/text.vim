"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType text setlocal textwidth=120
autocmd FileType text let &colorcolumn=join(range(121, 300), ",")
autocmd FileType text setlocal formatoptions+=t
