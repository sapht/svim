" VIM: set ft=vim :
version 7.2
if &cp | set nocp | endif
let s:cpo_save=&cpo
set runtimepath+=/Applications/LilyPond.app/Contents/Resources/share/lilypond/current/vim
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
set backupdir=~/tmp/vimswap/ directory=~/tmp/vimswap/
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
au InsertLeave * set nopaste
"au BufEnter * set cursorline cursorcolumn
"au BufLeave * set nocursorline nocursorcolumn

" source ~/.vim/High.vim

if has('gui_running')
	set guicursor=

	set mouse=a
	if has('gui_macvim')
		set macmeta
		set guifont=FixedSysTTF:h15
        set noantialias
		set background=dark
		colors solarized
	else
		set guifont=Terminus\ 8
		color bithack
	endif
else
	color primal
endif


source ~/.vim/keys.vimrc
source ~/.vim/plugins.vimrc
source ~/.vim/labels.vimrc

set notimeout
set novisualbell
set modeline
