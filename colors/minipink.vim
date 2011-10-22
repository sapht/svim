" Vim color file {{{
" Maintainer:   Daniel Hjerth
" Last Change:  
" URL:		http://
" color help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
" }}}
let g:colors_name="minipink"

" cterm colors {{{
" 0 = black
" 1 = red
" 2 = green
" 3 = yellow
" 4 = blue
" 5 = pink
" 6 = cyan
" 7 = gray
" 8 = light black (darker than gray)
" 9 = light red
" 10 = light green
" 11 = light yellow
" 12 = light blue
" 13 = light pink
" 14 = light cyan
" 15 = white (light gray)
" }}}
" highlighting specifications {{{
" toDO: what would be cool in files like this is hard columns...
" auto-pushing second and third columns to equal bytes
" would opt for higher clarity, maybe there's a plugin?
hi CursorLine ctermfg=none ctermbg=8 cterm=none
hi CursorColumn ctermfg=none ctermbg=8

hi String					ctermfg=3
hi SpecialKey     cterm=bold		    ctermfg=NONE
hi NonText        cterm=bold	    	ctermfg=NONE
hi Directory      cterm=bold	    	ctermfg=NONE
hi ErrorMsg       cterm=standout    ctermfg=NONE
hi IncSearch      cterm=underline	  ctermfg=14 ctermbg=0
hi Search         cterm=none	      ctermfg=0 ctermbg=14
hi Todo           cterm=underline   ctermfg=0 ctermbg=11
hi MoreMsg        cterm=bold	    	ctermfg=NONE
hi ModeMsg        cterm=bold	    	ctermfg=NONE
hi LineNr         ctermfg=8
hi Comment        ctermfg=8
hi Question       cterm=standout    	ctermfg=NONE
hi StatusLine     cterm=bold,reverse	ctermfg=NONE
hi StatusLineNC   cterm=reverse 	ctermfg=NONE
hi VertSplit      cterm=reverse		ctermfg=NONE
hi Title          cterm=bold		ctermfg=NONE
hi Visual         cterm=none		ctermfg=13 ctermbg=5
hi VisualNOS      cterm=bold,underline	ctermfg=NONE
hi WarningMsg     cterm=standout	ctermfg=NONE
hi WildMenu       cterm=standout	ctermfg=NONE
hi Folded         ctermbg=0 ctermfg=13
hi FoldColumn     ctermbg=0 ctermfg=13
hi DiffAdd        cterm=bold	        ctermfg=NONE
hi DiffChange     cterm=bold	        ctermfg=NONE
hi DiffDelete     cterm=bold	        ctermfg=NONE
hi DiffText       cterm=reverse	        ctermfg=NONE
hi Constant       ctermfg=2
hi Special        cterm=bold		ctermfg=NONE
hi Identifier     ctermfg=2
hi Statement      cterm=bold		ctermfg=NONE
hi PreProc        ctermfg=2
hi Type           ctermfg=7 cterm=underline
hi Underlined     ctermfg=7
hi Statement      ctermfg=15
hi Ignore         cterm=bold		ctermfg=NONE
hi Error          cterm=reverse		ctermfg=0
hi SignColumn			ctermbg=0 cterm=bold

hi htmlTag				ctermfg=2
hi htmlTagName		ctermfg=5
" }}}
