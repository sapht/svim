hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "burzum"

if &background == "light"
    hi Function guifg=#0033cc
    hi Statement guifg=#000066 gui=bold
    hi Constant guifg=#009900
    hi Number guifg=#0033cc
    hi Title guifg=#009900 gui=none
    hi LineNr guifg=#999999
    hi StatusLine guibg=#ffffff guifg=#ff0000 term=none gui=none cterm=none
    hi StatusLineNC guibg=#ffffff guifg=#000000 term=none gui=none cterm=none
    hi VertSplit guibg=#ffffff guifg=#000000 term=none gui=none cterm=none
    hi Normal guibg=#f0f0f0
    hi clear Foldcolumn
    hi clear Folded
    hi link Foldcolumn Normal
    hi Folded guifg=#0000ff guibg=#f0f0f0
else
    highlight Comment      guifg=#5d5d5d gui=italic
    highlight Constant     guifg=#cd6b00
    highlight Operator	   gui=none guifg=#999999
    highlight Identifier   gui=none guifg=#00A943
    highlight Statement    gui=none guifg=#33CC00
    highlight PreProc      guifg=#736353 
    highlight Type         gui=none guifg=#00cdcd
    highlight Special      gui=none guifg=#00cdcd 
    highlight Error        guibg=#ff0000
    highlight Todo         guifg=#000000 guibg=#007000

    highlight SignColumn guibg=#201A11
    highlight LineNr	     guifg=#667744 guibg=#002200

    highlight StatusLine   gui=none guibg=#99cc44 guifg=#000000
    highlight TabLine					gui=none guibg=#555522
    highlight TabLineSel			gui=none guifg=#000000 guibg=#999999
    highlight TabLineFill			gui=none guifg=#000000

    highlight StatusLineNC gui=none guibg=#555522 guifg=#000000

    highlight Directory    guifg=#00c000
    highlight Normal	     guifg=#CCB9A0 guibg=#201A11
    highlight Search       guibg=#ff9900 guifg=#000000

    highlight Cursor	     gui=none guifg=#ffffff guibg=#ff00ff
    highlight CursorLine	guibg=#221100
    highlight MatchParen	gui=none	guibg=#990099 guifg=#ffccff

    highlight Folded       guibg=#2F1F17 guifg=#887766

    highlight htmlTitle		gui=none guifg=#ffcccc
    highlight htmlH1		gui=none guifg=#ffffff
    highlight htmlH2		gui=none guifg=#ffffff
    highlight htmlH3		gui=none guifg=#ffffff
    highlight htmlH4		gui=none guifg=#ffffff
    highlight VertSplit    guifg=#555522 guibg=#555522
    highlight Visual       guifg=#F150EA guibg=#900890

    highlight MyTagListTitle guifg=#4444aa
    " highlight cursorline ctermbg=80 cterm=none guibg=#141414
endif
