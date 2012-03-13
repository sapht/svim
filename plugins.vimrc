"let g:loaded_matchparen = 1
"let loaded_matchit = 1
"let loaded_showmarks = 1

let g:JSLintHighlightErrorLine = 0
let g:CSApprox_verbose_level = 0
let g:no_html_tab_mapping = 1
let g:html_map_leader = "\\\\;"
" STUPID STUPID STUPID

let g:user_zen_settings = {
\  'indentation' : '\t',
\  'perl' : {
\    'aliases' : {
\      'req' : 'require '
\    },
\    'snippets' : {
\      'use' : "use strict\nuse warnings\n\n",
\      'warn' : "warn \"|\";",
\    }
\  }
\}

let g:user_zen_leader_key = '<C-p>'

let g:use_zen_complete_tag = 1


" PHP Plugin vars
let php_alt_properties = 1
let php_highlight_quotes = 1
let php_show_semicolon = 0
let php_alt_construct_parents = 1
let php_special_functions = 0
let php_alt_comparisons = 0
let php_special_vars = 0

" HTML indent vars 
" http://www.vim.org/scripts/script.php?script_id=2075
" {{{
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
" }}}

" MiniBufExpl 
" {{{
let g:miniBufExplMapWindowNavVim = 0
let g:miniBufExplMapWindowNavArrows = 0
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplVSplit = 0
" }}}

" Bufexplorer
let g:bufExplorerDefaultHelp=1
let g:bufExplorerFindActive=0
let g:bufExplorerShowDirectories=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='name'
let g:bufExplorerSplitOutPathName=0




" smarty
au BufRead,BufNewFile *.tpl set filetype=smarty

" ctags
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"

" showmarks 
" {{{
let showmarks_enable = 0
"if (exists( "loaded_showmarks" ))
	"let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.'`^<>[]\""
	""let g:showmarks_textlower=" "
	""let g:showmarks_textupper=" "
	""let g:showmarks_textother=" "
	"let g:showmarks_hlline_lower=1
	"let g:showmarks_hlline_upper=0
	"let g:showmarks_hlline_other=0
	"let g:showmarks_textlower="\t"
	"let g:showmarks_textupper="\t"
	"let g:showmarks_textother="\t"
	""autocmd CursorMoved * ShowMarksOn
	""autocmd InsertEnter * ShowMarksOn

	"hi ShowMarksHLl guibg=#FF0000 guifg=#FFFFFF
	"hi ShowMarksHLm guibg=#990099 guifg=#FFFFFF
"endif
" }}}

" Do not use menu for NERD Commenter
let NERDMenuMode=0
" Prevent NERD Commenter from complaining about unknown file types
let NERDShutUp=1

if !has('gui_running')
	let g:LustyJugglerSuppressRubyWarning = 1
endif
