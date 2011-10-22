" labels.vimrc
" Tab line functions from Brad Grissom {{{
" 
" " To use, do this:
" " :set tabline=%!MyTabLine()
" 
" function! MyTabLine()
"   let s = ''
"   for i in range(tabpagenr('$'))
"     " select the highlighting
"     if i + 1 == tabpagenr()
"       let s .= '%&TabLineSel;'
"     else
"       let s .= '%&TabLine;'
"     endif
" 
"     " set the tab page number (for mouse clicks)
"     let s .= '%' . (i + 1) . 'T'
" 
"     " the label is made by MyTabLabel()
"     "let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
"     let s .= ' %{BradLabel(' . (i + 1) . ')} '
"   endfor
" 
"   " after the last tab fill with TabLineFill and reset tab page nr
"   let s .= '%&TabLineFill;%T'
" 
"   " right-align the label to close the current tab page
"   if tabpagenr('$') > 1
"     let s .= '%=%&TabLine;%999Xclose'
"   endif
" 
"   return s
" endfunction
" 
" function! BradLabel(n)
"   let buflist = tabpagebuflist(a:n)
"   let winnr   = tabpagewinnr(a:n)
"   let bufnam  = bufname(buflist[winnr - 1])
"   " This is getting the basename() of bufname above
"   let base    = substitute(bufnam, '.*/', '', '')
"   let name    = a:n . ' ' . base
"   return name
" endfunction
" 
" function! MyTabLabel(n)
"   let buflist = tabpagebuflist(a:n)
"   let winnr = tabpagewinnr(a:n)
"   return bufname(buflist[winnr - 1])
" endfunction
" 
" " Use the above tabe naming scheme
" set tabline=%!MyTabLine()
" 
" 
" }}}
" My tab line functions {{{
function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
		let s .= '%' . (i + 1) . 'T'

		" the label is made by MyTabLabel()
		let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999Xclose'
	endif

	return s
endfunction

function! MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n, '$')
	"return bufname(buflist[winnr - 1])
	return a:n . " [" . winnr . "] "
	" TODO: add "modified" flag, see http://vimdoc.sourceforge.net/htmldoc/tabpage.html#tabline-menu
endfunction
" }}}

" :set paste if pasteneedyness is growing

set tabline=%!MyTabLine()
set guitablabel=%!MyTabLine()
set statusline=""
set ruler
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=%03.3b]\ [HEX=%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

function! GetOmniTitle()
	" {{{
	if exists('g:LAST_SESSION')
		return '+' . g:LAST_SESSION . '+'
	else
		let suffix = ''
		let bufno  = bufnr('$')
		if bufno > 1 | let suffix = ' (' . bufno . ')' | endif
		return 'vim: {%t' . suffix . '}'
		" %t = tail of file name in buffer
		" NOTE: if the buffer is a help window,
		" do a backwards nongreedy search for \*'.*'\* to obtain
		" the current help page (i.e. `statusline') and put this
		" as buffer name like man does ({statusline?+3}
	endif
	" }}}
endfunction

"let &titlestring = GetOmniTitle()
let &titlestring = "vim"

"command! -nargs=0 SetGlobalTitle call s:GetGlobalTitle()
":auto BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
":auto BufEnter * call s:SetGlobalTitle()
"let &titlestring=GetTitle()

set title
if $TERM=='screen'
	exe "set title t_ts=\<ESC>k t_fs=\<ESC>\\"
endif
