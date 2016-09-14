"-------------------------------------------------------------------------------
" Autocommands
"-------------------------------------------------------------------------------
autocmd FileType matlab let &colorcolumn=join(range(81, 300), ",")
autocmd FileType matlab setlocal textwidth=80

autocmd FileType matlab iabbrev %-- %-------------------------------------------------------------------------------
