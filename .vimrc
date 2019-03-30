                                             "-------
                                             " PLUGIN
                                             "-------

":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

let mapleader = "\\"
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'rhysd/vim-clang-format'
call vundle#end()

let g:ycm_key_list_select_completion   = [ '<c-n>', '<down>' ]
let g:ycm_key_list_previous_completion = [ '<c-p>', '<up>'   ]
let g:SuperTabDefaultCompletionType    = '<c-n>'

let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

                                            "--------
                                            " OPTIONS
                                            "--------

" 1 IMPORTANT
set nocompatible
set pastetoggle=<F3>

" 2 MOVING AROUND, SEARCHING AND PATTERNS
set whichwrap=b,s,<,>,[,]
set incsearch
set magic

" 3 TAGES
" 4 DISPLAYING TEXT
set fillchars=vert:\ ,stl:\ ,stlnc:\
set number

" 5 SYNTAX, HIGHLIGHTING AND SPELLING
syntax on
filetype plugin indent on
set hlsearch
set cursorline

" 6 MULTIPLE WINDOWS
set laststatus=2
set splitbelow
set splitright

" 7 MULTIPLE TAB PAGES
" 8 TERMINAL
" 9 USING THE MOUSE
set mouse=a

" 10 PRINTING
" 11 MESSAGES AND INFO
set showcmd
set showmode
set ruler
set report=0
set confirm
set noerrorbells
set visualbell

" 12 SELECTING TEXT
set selection=exclusive
set selectmode=mouse,key

" 13 EDITING TEXT
set textwidth=100
set backspace=2
set completeopt=longest,menu
set showmatch
set matchtime=1

" 14 TABS AND INDENTING
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set autoindent
set smartindent
set cindent

" 15 FOLDING
" 16 DIFF MODE
" 17 MAPPING
" 18 READING AND WRITING FILES
set nowritebackup
set nobackup
set autowrite
set autoread

" 19 THE SWAP FILE
set noswapfile

" 20 COMMAND LINE EDITING
set history=1000
set wildmenu

" 21 EXECUATING EXTERNAL COMMANDS
" 22 RUNNING MAKE AND JUMPING TO ERRORS
" 23 LANGUAGE SPECIFIC
" 24 MULTI-BYTE CHARACTERS
" 25 VARIOUS
set encoding=utf-8
set viminfo+=!

                                            "--------
                                            " MAPPING
                                            "--------

nnoremap K  <nop>
nnoremap ZZ <nop>

nnoremap Y y$
"nnoremap * gd

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <silent><leader>vv :vsp $MYVIMRC<cr>
nnoremap <silent><leader>vp :vsp $bashrc<cr>
nnoremap <silent><leader>sv :w<cr>:source $MYVIMRC<cr>:noh<cr>
nnoremap <silent><leader>q  :qall<cr>

inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

inoremap ) <c-r>=ClosePair(')')<cr>
inoremap } <c-r>=ClosePair('}')<cr>
inoremap ] <c-r>=ClosePair(']')<cr>

inoremap <expr><bs> DeleteEmptyPair()

vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap ) <esc>`>a)<esc>`<i(<esc>
vnoremap { <esc>`>a}<esc>`<i{<esc>
vnoremap } <esc>`>a}<esc>`<i{<esc>
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap ] <esc>`>a]<esc>`<i[<esc>
vnoremap < <esc>`>a><esc>`<i<<esc>
vnoremap > <esc>`>a><esc>`<i<<esc>
vnoremap " <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>

func! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<right>"
    else
        return a:char
    endif
endfunc

func! QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        return a:char
    elseif line[col - 1] == a:char
        return "\<right>"
    else
        return a:char.a:char."\<left>"
    endif
endfunc

func! DeleteEmptyPair()
    if InAnEmptyPair()
        return "\<left>\<del>\<del>"
    else
        return "\<bs>"
    endif
endfunc

func! InAnEmptyPair()
    let cur = strpart(getline('.'),getpos('.')[2]-2,2)
    for pair in (split(&matchpairs,',') + ['":"',"':'"])
        if cur == join(split(pair,':'),'')
            return 1
        endif
    endfor
    return 0
endfunc

                                         "------------
                                         " AUTOCOMMAND
                                         "------------

autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

for f in split(glob('~/.vim/ftplugin/*.vim'), '\n')
    exe 'source' f
endfor

                                              "----
                                              " GUI
                                              "----

set t_Co=256
let &colorcolumn=join(range(101, 300), ",")
colorscheme jxu
