hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "bithack"

highlight Comment       ctermfg=8         guifg=#4d4d4d   cterm=none        gui=none
highlight Constant      ctermfg=32	      guifg=#008bcd   cterm=none        gui=none
highlight Identifier    ctermfg=6         guifg=#00c0c0   cterm=none        gui=none
highlight Statement     ctermfg=245        guifg=#8b8b8b   cterm=none        gui=none
highlight PreProc       ctermfg=darkgrey  guifg=#737373   cterm=none        gui=none
highlight Type          ctermfg=2         guifg=#00cd00   cterm=none        gui=none
highlight Special       ctermfg=6         guifg=#00cdcd   cterm=none        gui=none
highlight Error         ctermbg=red       guibg=#ff0000
highlight Todo          ctermfg=black     guifg=#000000   ctermbg=darkgreen guibg=#007000

highlight Directory  ctermfg=2						  guifg=#00c000
highlight Normal	 ctermfg=LightGrey				  guifg=#aeaeae guibg=#000000
highlight Search				ctermbg=3							guibg=#c0c000
highlight LineNr	 ctermfg=8  ctermbg=232          guifg=#505050 guibg=#141414
highlight Cursor	 ctermbg=Grey ctermfg=Black
highlight Folded ctermbg=none ctermfg=gray guibg=#333333 guifg=#ffffff
highlight StatusLineNC ctermfg=black ctermbg=grey
highlight StatusLine ctermbg=black ctermfg=grey
highlight VertSplit ctermbg=black ctermfg=grey
highlight cursorline ctermbg=232 cterm=none guibg=#141414

highlight MyTagListTitle gui=none cterm=none guifg=#4444aa
