" Vim color file
" Maintainer:   Tony Mechelynck <antoine.mechelynck@gmail.com>
" Last Change:  2009 Aug 04
" Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·
" This is almost the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Only the highlight groups named below are defined; the rest
" are left at their compiled-in default settings.

let s:colors_name = "almost-default"
if exists("g:debug") && g:debug
echomsg s:colors_name "start"
endif

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
syntax reset
endif

" Set our own highlighting settings
hi SpecialKey                   guibg=NONE
" white on red is not always distinct in the GUI: use black on red then
hi Error                        guibg=red           guifg=black
hi clear ErrorMsg
hi link  ErrorMsg       Error
" display matchit messages
hi def link MatchError  WarningMsg
" show cursor line/column (if enabled) in very light grey in the GUI,
" underlined in the console
if has("gui_running")
hi clear CursorLine
hi CursorLine                 guibg=#F4F4F4
endif
hi clear CursorColumn
hi link  CursorColumn   CursorLine
" do not make help bars and stars invisible
hi clear helpBar
hi link  helpBar        helpHyperTextJump
hi clear helpStar
hi link  helpStar       helpHyperTextEntry
" the following were forgotten in the syntax/vim.vim (and ended up cleared)
hi clear vimVar
hi link  vimVar         Identifier
hi clear vimGroupName
hi link  vimGroupName   vimGroup
hi clear vimHiClear
hi link  vimHiClear     vimHighlight
" in the GUI only, display the Ignore group as very slightly visible
hi clear Ignore
exe "hi Ignore term=NONE guibg=white guifg=#999999 ctermbg=NONE ctermfg="

" Last Change:  2009 Aug 04
" Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·Ã·
" This is almost the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Only the highlight groups named below are defined; the rest
" are left at their compiled-in default settings.

let s:colors_name = "almost-default"
if exists("g:debug") && g:debug
echomsg s:colors_name "start"
endif

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
syntax reset
endif

" Set our own highlighting settings
hi SpecialKey                   guibg=NONE
" white on red is not always distinct in the GUI: use black on red then
hi Error                        guibg=red           guifg=black
hi clear ErrorMsg
hi link  ErrorMsg       Error
" display matchit messages
rk" ? "black" : "white")
" display the status line of the active window in a distinctive color:
" bold black on bright red in the GUI, white on green in the console
" (where the bg is never bright, and dark red is sometimes an ugly sort
" of reddish brown).
hi StatusLine   gui=NONE,bold   guibg=red           guifg=black
hi def link MatchError  WarningMsg
" show cursor line/column (if enabled) in very light grey in the GUI,
" underlined in the console
if has("gui_running")
hi clear CursorLine
hi CursorLine                 guibg=#F4F4F4
endif
hi clear CursorColumn
hi link  CursorColumn   CursorLine
" do not make help bars and stars invisible
hi clear helpBar
hi link  helpBar        helpHyperTextJump
hi clear helpStar
hi link  helpStar       helpHyperTextEntry
" the following were forgotten in the syntax/vim.vim (and ended up cleared)
hi clear vimVar
hi link  vimVar         Identifier
hi clear vimGroupName
hi link  vimGroupName   vimGroup
hi clear vimHiClear
hi link  vimHiClear     vimHighlight
" in the GUI only, display the Ignore group as very slightly visible
hi clear Ignore
exe "hi Ignore term=NONE guibg=white guifg=#999999 ctermbg=NONE ctermfg="
NE,bold ctermbg=darkgreen   ctermfg=white
hi WildMenu     gui=NONE,bold   guibg=green         guifg=black

NE,bold ctermbg=black       ctermfg=white
" make the status line bold-reverse (but B&W) for inactive windows
hi StatusLineNC gui=reverse,bold

NE      ctermbg=black       ctermfg=lightgrey
" make the active status line colours alternate between two settings
" to give a visual notice of the CursorHold/CursorHoldI events
if ! exists("s:statuslineflag")
let s:statuslineflag = 0
endif

" The following 'fancy footwork' is needed to have our CursorHold autocommand
" work smoothly with 256-color cterms handled by the 3rd-party csapprox.vim plugin
if exists('g:CSApprox_approximator_function')
let s:ctbg1 = g:CSApprox_approximator_function(0,   255, 0) " green
let s:ctbg2 = g:CSApprox_approximator_function(255, 0,   0) " red
let s:ctfg  = g:CSApprox_approximator_function(0,   0,   0) " black
else
let s:ctbg1 = 'darkgreen'
let s:ctbg2 = 'black'
let s:ctfg  = 'white'
endif

function! ToggleStatusLine()
if s:statuslineflag
exe 'hi StatusLine'

m =NONE,bold   guibg=green          guifg=black'
exe 'hi WildMenu'
=NONE,bold   guibg=red            guifg=black'
else
exe 'hi StatusLine'
=NONE,bold   guibg=red            guifg=black'
exe 'hi WildMenue

mmck
" tab and file number 1:2/3 for unselected tab
hi User2                        guibg=#EEEEEE       guifg=mghtgrey   ctermfg=black
" additional override for manpages Ã  la Dr. Chip
hi manSubSectionStart           guibg=white         guifg=yeck       ctermfg=darkblue

" remember the current colorscheme name
let g:colors_name = s:colors_name
if 0
" the following is required e.g. if we have debug on
if exists("syntax_on")
syntax on
endif

if exists("g:debug") && g:debug
echomsg s:colors_name "end"
endif
endif
