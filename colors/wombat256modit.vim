" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2022-07-14
"
" Added italics, SpellLocal highlight color
"   Adrian Kocis <adrian.kocis@gmail.com>
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)

set background=dark

if exists('g:color_scheme_loaded')
	if v:version > 580
		hi clear
		if exists('syntax_on')
			syntax reset
		endif
	endif
endif

let g:colors_name = 'wombat256modit'


" General colors
hi Normal		ctermfg=252		ctermbg=234		cterm=none		guifg=#e3e0d7	guibg=#242424	gui=none
hi Cursor		ctermfg=234		ctermbg=228		cterm=none		guifg=#242424	guibg=#eae788	gui=none
hi Visual		ctermfg=251		ctermbg=239		cterm=none		guifg=#c3c6ca	guibg=#554d4b	gui=none
hi VisualNOS	ctermfg=251		ctermbg=236		cterm=none		guifg=#c3c6ca	guibg=#303030	gui=none
hi Search		ctermfg=177		ctermbg=241		cterm=none		guifg=#d787ff	guibg=#636066	gui=none
hi Folded		ctermfg=103		ctermbg=237		cterm=none		guifg=#a0a8b0	guibg=#3a4046	gui=none
hi Title		ctermfg=230						cterm=bold		guifg=#ffffd7					gui=bold
if v:version >= 704
	hi StatusLine	ctermfg=230		ctermbg=238		cterm=italic	guifg=#ffffd7	guibg=#444444	gui=italic
else
	hi StatusLine	ctermfg=230		ctermbg=238		cterm=none		guifg=#ffffd7	guibg=#444444	gui=italic
endif
hi VertSplit	ctermfg=238		ctermbg=238		cterm=none		guifg=#444444	guibg=#444444	gui=none
hi StatusLineNC	ctermfg=241		ctermbg=238		cterm=none		guifg=#857b6f	guibg=#444444	gui=none
hi LineNr		ctermfg=241		ctermbg=232		cterm=none		guifg=#857b6f	guibg=#080808	gui=none
hi SpecialKey	ctermfg=241		ctermbg=235		cterm=none		guifg=#626262	guibg=#2b2b2b	gui=none
hi WarningMsg	ctermfg=203										guifg=#ff5f55
hi ErrorMsg		ctermfg=196		ctermbg=236		cterm=bold		guifg=#ff2026	guibg=#3a3a3a	gui=bold

" Vim >= 7.0 specific colors
if v:version >= 700
	hi CursorLine					ctermbg=236		cterm=none						guibg=#32322f
	hi MatchParen	ctermfg=228		ctermbg=101		cterm=bold		guifg=#eae788	guibg=#857b6f	gui=bold
	hi Pmenu		ctermfg=230		ctermbg=238						guifg=#ffffd7	guibg=#444444
	hi PmenuSel		ctermfg=232		ctermbg=192						guifg=#080808	guibg=#cae982
endif

" Diff highlighting
hi DiffAdd						ctermbg=17										guibg=#2a0d6a
hi DiffDelete	ctermfg=234		ctermbg=60		cterm=none		guifg=#242424	guibg=#3e3969	gui=none
hi DiffText						ctermbg=53		cterm=none						guibg=#73186e	gui=none
hi DiffChange					ctermbg=237										guibg=#382a37

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
highlight SpellLocal ctermfg=252 ctermbg=31 cterm=none gui=undercurl guisp=Cyan
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu

if v:version >= 704
	hi! link ColorColumn StatusLine
endif

" Syntax highlighting
hi Keyword		ctermfg=111		cterm=none		guifg=#88b8f6	gui=none
hi Statement	ctermfg=111		cterm=none		guifg=#88b8f6	gui=none
hi Constant		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Number		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi PreProc		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Function		ctermfg=192		cterm=none		guifg=#cae982	gui=none
hi Identifier	ctermfg=192		cterm=none		guifg=#cae982	gui=none
hi Type			ctermfg=186		cterm=none		guifg=#d4d987	gui=none
hi Special		ctermfg=229		cterm=none		guifg=#eadead	gui=none
if v:version >= 704
	hi String		ctermfg=113		cterm=italic	guifg=#95e454	gui=italic
	hi Comment		ctermfg=246		cterm=italic	guifg=#9c998e	gui=italic
	hi Todo			ctermfg=101		cterm=italic	guifg=#857b6f	gui=italic
else
	hi String		ctermfg=113		cterm=none	guifg=#95e454	gui=italic
	hi Comment		ctermfg=246		cterm=none	guifg=#9c998e	gui=italic
	hi Todo			ctermfg=101		cterm=none	guifg=#857b6f	gui=italic
endif


" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link SignColumn 	Folded
" highlighting non-text with LineNr (black background does not always look good, disabled for now)
" hi! link NonText		LineNr

hi GitSignsAdd		ctermfg=17		ctermbg=237		cterm=none  guifg=#2a0d6a guibg=#3a4046 gui=none
hi GitSignsAddNr    ctermfg=19		ctermbg=232		cterm=none  guifg=#3a1d7a guibg=#080808 gui=none
hi GitSignsDelete		ctermfg=60		ctermbg=237		cterm=none  guifg=#3e3969 guibg=#3a4046 gui=none
hi GitSignsDeleteNr		ctermfg=62		ctermbg=237		cterm=none  guifg=#4e4979 guibg=#080808 gui=none

" vim:set ts=4 sw=4 noet:
