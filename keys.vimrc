map <leader>/i :set ignorecase!<CR>:set ignorecase?<CR>
map <leader>/h :set hlsearch!<CR>:set hlsearch?<CR>

nmap <leader>h mAkJ`A
nmap <leader>j mAo<Esc>`A
nmap <leader>k mAO<Esc>`A
nmap <leader>l :set cursorline!<CR>:set cursorline?<CR>

imap <C-c> <Esc>

map <Space> <nop>
map <Enter> <nop>
map <Backspace> <nop>

" j is the insert mode prefix key
imap jj <Esc>
imap jl <C-o>^X<C-o>>><C-o>s
imap jh <C-o>^X<C-o><<<C-o>s

" stuff i never use that just bugs me
map H <nop>
map L <nop>
map K <nop>

"nunmap <Left> 
"nunmap <Right>
nmap <Down> +
nmap <Up> -
nmap <Home> gg
nmap <End> G

map <F1> :!./%<CR>
map <F2> :wall<CR>
map <F3> :set hlsearch!<CR>
map <F4> <plug>NERDCommenterToggle
map <F5> :NERDTreeToggle<CR>
map <F6> :set wrap!<CR>
map <F7> :sh<CR>
map <F8> :BufExplorer<CR>
map <leader><F9> :cclose<CR>
map <F9> :copen<CR>
map <F10> :cp<CR>
map <F11> :cn<CR>
map <F12> :q!<CR>

map <M-i> >>
map <M-o> <<
nmap <leader>] :cn<CR>
nmap <leader>[ :cp<CR>
nmap <leader>= :cc<CR>
nmap <leader>rr :call ReloadSnippets(snippets_dir, &filetype)<CR>
nmap <leader>clo :copen<CR>
nmap <leader>clc :cclose<CR>

"nunmap <Left> 
"nunmap <Right>
nmap <Home> gg
nmap <End> G

nmap <F1> :make<CR>
nmap <F2> :wall<CR>
nmap <F3> :set hlsearch!<CR>
nmap <F4> <plug>NERDCommenterToggle
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :set number!<CR>
nmap <F7> :cp<CR>
nmap <F8> :cn<CR>
nmap <F12> :q!<CR>

nmap <M-i> >>
nmap <M-o> <<
nmap <M-h> <C-w><C-h>
nmap <M-j> <C-w><C-j>
nmap <M-k> <C-w><C-k>
nmap <M-l> <C-w><C-l>
nmap <Esc>h <C-w><C-h>
nmap <Esc>j <C-w><C-j>
nmap <Esc>k <C-w><C-k>
nmap <Esc>l <C-w><C-l>

function! Smart_TabComplete()
  let line = getline('.')                         " curline
  let substr = strpart(line, -1, col('.')+1)      " from start to cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

function! ReloadSnippets( snippets_dir, ft )
    if strlen( a:ft ) == 0
        let filetype = "_"
    else
        let filetype = a:ft
    endif

    call ResetSnippets()
    call GetSnippets( a:snippets_dir, filetype )
endfunction

" this drives me crazy, why won't escape ever work right
" inoremap <Esc> <C-c>

" The most awesome mapleader ever
"
let mapleader = "\\"

" I'll do this myself, please
let g:NERDCreateDefaultMappings = 0
map <Leader>cc <plug>NERDCommenterComment
map <Leader>c<space> <plug>NERDCommenterToggle
map <Leader>cm <plug>NERDCommenterMinimal
map <Leader>cs <plug>NERDCommenterSexy
map <Leader>ci <plug>NERDCommenterInvert
map <Leader>cy <plug>NERDCommenterYank
map <Leader>cl <plug>NERDCommenterAlignLeft
map <Leader>cb <plug>NERDCommenterAlignBoth
map <Leader>cn <plug>NERDCommenterNest
map <Leader>cu <plug>NERDCommenterUncomment
map <Leader>c$ <plug>NERDCommenterToEOL
map <Leader>cA <plug>NERDCommenterAppend

map <S-space> <plug>NERDCommenterToggle
vmap <S-space> <plug>NERDCommenterToggle

if !hasmapto('<plug>NERDCommenterAltDelims', 'n')
		nmap <Leader>ca <plug>NERDCommenterAltDelims
endif

" Write, goddammit
command! WriteFFS set noro | w! !sudo tee % > /dev/null
" :W is :w
command! W w

" Replace macros with other stuff so q means :q
let b:qmap = ':q'
"exec 'map q ' . b:qmap
function! RecPlay(key)
	echo "RecPlay"
	exec 'unmap q'
	let n = '@' . a:key 
	let g:RecordingRegistry = a:key
	exec 'normal ' . n
	exec 'map q ' . b:qmap
endfunction
function! RecStart(key)
	echo "RecStart"
	exec 'unmap q'
	let n = 'q' . a:key 
	exec 'normal ' . n
	map q :RecStop<CR>
endfunction
function! RecStop()
	echo "RecStop"
	exec 'unmap q'
	normal q

	" leetpro uglyhaxx to remove trailing q
	let @q = strpart( @q, 0, strlen(@q) - 1 )
	exec 'map q ' . b:qmap
endfunction
command! -nargs=+ RecStart call RecStart(<f-args>)
command! -nargs=+ RecPlay call RecPlay(<f-args>)
command! RecStop call RecStop()

function! Apa ()
	nunmap q
	normal q:z1<CR>
	exec 'map q' . b:qmap
endfunction
command! Apa call Apa()

nmap \: :Apa<CR>

" MapToggle utility
function! MapToggle(key, opt) " 
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
"  exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command! -nargs=+ MapToggle call MapToggle(<f-args>)

" Utility for executing the current file as a shell command
function! BufferRunCommand()
	let a = 'echo %'
	let b = expand(a)
	let response = system(b)
	echo response
endfunction
command! BufferRunCommand call BufferRunCommand()

" Write file and compile -- whatever that means (upload, gcc, rubber etc)
nmap <Leader>w :w<CR>
nmap <Leader>r :!./"l"<CR>

" Make Y consistent with D
map Y y$

" Close window
map j gj
map k gk

imap <F1> <C-o>:set paste! paste?<CR>
map <F1> :set paste! paste?<CR>
set pastetoggle=<F1>

" (((((asdf asdf asdf)))))

map <C-Left> <C-w><
map <C-Down> <C-w>+
map <C-Up> <C-w>-
map <C-Right> <C-w>>

map <S-Left> <C-w><C-h>
map <S-Down> <C-w><C-j>
map <S-Up> <C-w><C-k>
map <S-Right> <C-w><C-l>

"imap <Left> <C-o>zh
"imap <Down> <C-o><C-e>
"imap <Up> <C-o><C-y>
"imap <Right> <C-o>zl

" map L 4l
" map H 4h

nnoremap <Leader>g `
"nunmap <C-?>
"nunmap <C-h>
"nunmap <space>
"nunmap <enter>
nmap L l
nmap H h
nmap K k

" Function-oriented leader mappings
map <leader>2 :set number!<CR>
map <leader>33 :set hlsearch! hlsearch?<CR>
map <leader>34 :let @/ = ""<CR>
map <leader>4 :set cursorline!<CR>
map <leader>5 :set wrap! wrap?<CR>

map <leader>8w :SessionSave<CR>
map <leader>8l :SessionList<CR>
map <leader>9 :tabNext<CR>
map <leader>0 :tabnext<CR>

" Remap visual * and #: Search for selected text, forwards or backwards.
"vnoremap <silent> * :<C-U>
  "\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  "\gvy/<C-R><C-R>=substitute(
  "\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  "\gV:call setreg('"', old_reg, old_regtype)<CR>
"vnoremap <silent> # :<C-U>
  "\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  "\gvy?<C-R><C-R>=substitute(
  "\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  "\gV:call setreg('"', old_reg, old_regtype)<CR>

" Make visual mode more reasonable
vmap J j
vmap K k

" I HATE DEFAULT COMMAND MODE KEYBINDINGS
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

" Re-sourcing stuff 
map <Leader>ss :source ~/.vimrc<CR>
map <Leader>sk :source ~/.vim/keys.vimrc<CR>
map <Leader>sp :source ~/.vim/plugins.vimrc<CR>
map <Leader>sl :source ~/.vim/labels.vimrc<CR>
map <Leader>sc :source ~/.vim/colors/minipink.vim<CR>

" Changing (gui) window size 
map <Leader>ws :set columns=82<CR>:set lines=34<CR>
map <Leader>wm :set columns=134<CR>:set lines=60<CR>
map <Leader>wl :set columns=168<CR>:set lines=300<CR>
map <Leader>wg :set columns=300<CR>:set lines=300<CR>

" Changing (gui) font size 
map <Leader>fs :set guifont=Monaco:h10<CR>
map <Leader>fm :set guifont=Menlo:h11<CR>
map <Leader>fl :set guifont=Menlo:h14<CR>
map <Leader>fg :set guifont=Menlo:h18<CR>

" Changing (gui) color schemes 
map <Leader>co1 :colorscheme minipink<CR>:colorscheme appendix<CR>
map <Leader>co2 :colorscheme burzum<CR>:colorscheme appendix<CR>
map <Leader>co3 :colorscheme macvim<CR>:colorscheme appendix<CR>
map <Leader>co4 :colorscheme inkpot<CR>:colorscheme appendix<CR>
map <Leader>co5 :colorscheme asu1dark<CR>:colorscheme appendix<CR>
map <F1> :make<CR>
