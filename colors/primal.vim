" primal vim colors
"   red, black, white
"   highlights comments, TODOs, errors -- nothing else
" :he group-name
" :he highlight-groups
" :he cterm-colors

hi clear
syntax reset
let g:colors_name="primal"

hi SpecialKey     cterm=none        ctermfg=NONE
hi NonText        cterm=none            ctermfg=1
hi Directory      cterm=none            ctermfg=1
hi ErrorMsg       cterm=standout        ctermfg=NONE
hi IncSearch      cterm=none         ctermfg=NONE ctermbg=1
hi Search         cterm=none         ctermfg=0 ctermbg=1
hi MoreMsg        cterm=none            ctermfg=NONE
hi ModeMsg        cterm=none            ctermfg=NONE
hi LineNr         cterm=none       ctermfg=NONE ctermbg=0
hi Question       cterm=standout        ctermfg=NONE
hi StatusLine     cterm=none,reverse    ctermfg=NONE
hi StatusLineNC   cterm=reverse     ctermfg=NONE
hi VertSplit      cterm=reverse     ctermfg=NONE
hi Title          cterm=none        ctermfg=NONE
hi Visual         cterm=reverse     ctermfg=1
hi VisualNOS      cterm=none,none  ctermfg=NONE
hi WarningMsg     cterm=standout    ctermfg=NONE
hi WildMenu       cterm=none    ctermfg=7 ctermbg=1
hi Folded         cterm=none    ctermfg=1 ctermbg=none
hi FoldColumn     cterm=none    ctermfg=1 ctermbg=none
hi DiffAdd        cterm=none            ctermfg=NONE
hi DiffChange     cterm=none            ctermfg=NONE
hi DiffDelete     cterm=none            ctermfg=NONE
hi DiffText       cterm=reverse         ctermfg=NONE
hi Comment        cterm=none            ctermfg=1
hi Constant       cterm=none   ctermfg=NONE
hi Special        cterm=none        ctermfg=NONE
hi Identifier     cterm=none   ctermfg=NONE
hi Statement      cterm=none        ctermfg=NONE
hi PreProc        cterm=none   ctermfg=NONE
hi Type           cterm=none   ctermfg=NONE
hi Underlined     cterm=underline   ctermfg=NONE
hi Ignore         cterm=none        ctermfg=NONE
hi Error          cterm=none     ctermfg=NONE ctermbg=NONE
hi Todo           cterm=none    ctermfg=7 ctermbg=1
hi Normal					ctermfg=7
hi MatchParen     cterm=none ctermbg=none ctermfg=6
