hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "enya"

highlight Comment    gui=italic guifg=#7A7A7A 
highlight Constant	 gui=none guifg=#CC0000
highlight Operator	 guifg=#330000
highlight Identifier guifg=#006600
highlight Statement gui=none guifg=#000099
highlight PreProc		guifg=#990099
highlight Type			gui=none guifg=#009999
highlight Special		guifg=#888800
" highlight Error 
" highlight Todo

" highlight Directory
highlight Normal guifg=#000000 guibg=#F4EECC
" highlight Search
highlight LineNr guifg=#666666 guibg=#FFFFDD
" highlight Cursor
highlight Folded gui=italic guifg=#993300 guibg=#F4EECC
" highlight StatusLineNC
" highlight StatusLine
" highlight VertSplit
" highlight Visual
" highlight MyTagListTitle
" highlight cursorline ctermbg=80 cterm=none guibg=#141414
