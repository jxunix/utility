hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jxu"

highlight Comment       ctermfg=8
highlight Constant      ctermfg=45              cterm=none
highlight Error                     ctermbg=9
highlight Function      ctermfg=10
highlight LineNr        ctermfg=8
highlight Normal        ctermfg=253
highlight Number        ctermfg=45
highlight Pmenu         ctermfg=15  ctermbg=8
highlight PmenuSbar                 ctermbg=8
highlight PmenuSel      ctermfg=0   ctermbg=7
highlight PmenuThumb                ctermbg=7
highlight PreProc       ctermfg=13
highlight Search                    ctermbg=3
highlight Special       ctermfg=13
highlight Statement     ctermfg=11              cterm=bold
highlight StatusLine    ctermfg=15  ctermbg=12  cterm=none
highlight StatusLineNC  ctermfg=0   ctermbg=8   cterm=none
highlight String        ctermfg=45
highlight Todo          ctermfg=15  ctermbg=9   cterm=bold
highlight Type          ctermfg=10
