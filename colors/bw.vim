" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  5 Oct 2001
" URL:      http://fugal.net/vim/colors/bw.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="bw"

hi SpecialKey     cterm=bold        ctermfg=NONE
hi NonText        cterm=bold            ctermfg=1
hi Directory      cterm=bold            ctermfg=1
hi ErrorMsg       cterm=standout        ctermfg=NONE
hi IncSearch      cterm=standout         ctermfg=NONE
hi Search         cterm=standout         ctermfg=NONE
hi MoreMsg        cterm=bold            ctermfg=NONE
hi ModeMsg        cterm=bold            ctermfg=NONE
hi LineNr         cterm=standout       ctermfg=NONE
hi Question       cterm=standout        ctermfg=NONE
hi StatusLine     cterm=bold,reverse    ctermfg=NONE
hi StatusLineNC   cterm=reverse     ctermfg=NONE
hi VertSplit      cterm=reverse     ctermfg=NONE
hi Title          cterm=bold        ctermfg=NONE
hi Visual         cterm=reverse     ctermfg=6
hi VisualNOS      cterm=bold,underline  ctermfg=NONE
hi WarningMsg     cterm=standout    ctermfg=NONE
hi WildMenu       cterm=standout    ctermfg=NONE
hi Folded         cterm=standout    ctermfg=7
hi FoldColumn     cterm=standout    ctermfg=NONE
hi DiffAdd        cterm=bold            ctermfg=NONE
hi DiffChange     cterm=bold            ctermfg=NONE
hi DiffDelete     cterm=bold            ctermfg=NONE
hi DiffText       cterm=reverse         ctermfg=NONE
hi Comment        cterm=bold            ctermfg=NONE
hi Constant       cterm=underline   ctermfg=NONE
hi Special        cterm=bold        ctermfg=NONE
hi Identifier     cterm=underline   ctermfg=NONE
hi Statement      cterm=bold        ctermfg=NONE
hi PreProc        cterm=underline   ctermfg=NONE
hi Type           cterm=underline   ctermfg=NONE
hi Underlined     cterm=underline   ctermfg=NONE
hi Ignore         cterm=bold        ctermfg=NONE
hi Error          cterm=reverse     ctermfg=NONE
hi Todo           cterm=standout    ctermfg=NONE
hi Normal					ctermfg=7

