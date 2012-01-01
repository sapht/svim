" VIM: set ft=vim :
version 7.2
if &cp | set nocp | endif
let s:cpo_save=&cpo
call pathogen#infect()
set nocompatible
set cpo&vim

set ignorecase
set incsearch

set foldmethod=indent
set backspace=indent,eol,start
set mouse=

set laststatus=2
set showcmd

set lazyredraw
set fileencodings=utf-8,ucs-bom,default,latin1
set helplang=en

" set grepprg=grep\ -nrH\ $*
set grepprg=ack\ $*

set hidden
set backupdir=~/.vimswap// directory=~/.vimswap//
set nowritebackup

set tabstop=4 softtabstop=4 shiftwidth=4
set nosmartindent autoindent nocindent
set indentkeys=
set cinkeys=
set formatoptions-=c formatoptions-=r formatoptions-=o
set expandtab
filetype indent off
filetype plugin indent off
filetype plugin on
"set cinkeys-=: indentkeys-=:


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


set nowrap
set number 

"set iskeyword+=^_
"set whichwrap=<,>,[,],h,l
set whichwrap=

set wildmenu wim=full

filetype on
filetype plugin on

syntax on

"set cursorline cursorcolumn
"au InsertEnter * set nocursorline 
"au InsertLeave * set cursorline
"au WinEnter * set cursorline cursorcolumn
"au WinLeave * set nocursorline nocursorcolumn
au BufEnter * normal zR
"au BufEnter * set cursorline cursorcolumn
"au BufLeave * set nocursorline nocursorcolumn

" source ~/.vim/High.vim

" gvim {{{
if has('gui_running')
	set go=
	" Guicursor
	"set gcr=a:blinkon0

	set mouse=a
	if has('gui_macvim')
		set macmeta
		set guifont=Menlo:h13
		set background=light
		colors solarized
	else
		set guifont=Terminus\ 8
		color bithack
	endif

	" color zenburn
" }}}
" terminal vim {{{
else
	if &term == "linux"
		"set t_ve+=[?81;0;112c
	endif

	color default
" set t_Co=16
	" color zenburn
endif
" }}}

" colors appendix
au InsertLeave * set nopaste

" colors ~/.vim/colors/minipink.vim
source ~/.vim/keys.vimrc
" Key bindings
source ~/.vim/plugins.vimrc
" Settings for plugins
source ~/.vim/labels.vimrc
" Settings for labels

normal zR
set notimeout
set novisualbell

set modeline
