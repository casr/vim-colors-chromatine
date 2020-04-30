" Vim color file
" Description: Low-colour theme with light and dark variants
" Maintainer: Chris Rawnsley <chris@puny.agency>
" Version: 0.0.1
" Source: https://github.com/casr/vim-colors-chromatine
" Modified: 2020 Apr 30

" This scheme is split into three parts:
"
"   1) monochrome (a useful fallback for consoles)
"   2) if 256 colours available and NO_COLOR is unset
"
" :h highlight-groups
" :h group-name
" :h cterm-colors
" Reference: $VIMRUNTIME/colors/README.txt
" Reference: $VIMRUNTIME/colors/default.vim
" Reference: $VIMRUNTIME/syntax/syncolor.vim

hi clear
if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'chromatine'

let s:has_color = has('gui_running') ||
                  \ (exists('&t_Co') && !empty(&t_Co) && &t_Co >= 256)
let s:wants_color = get(g:, 'chromatine_wants_color', !exists('$NO_COLOR'))

let s:more_shades = s:has_color && s:wants_color

hi Normal ctermfg=NONE ctermbg=NONE
if &background ==# 'light'
	hi Normal guifg=Black guibg=White
else
	hi Normal guifg=White guibg=Black
endif

" Monochrome {{{

hi Directory term=NONE ctermfg=NONE guifg=NONE
" hi link EndOfBuffer NonText
hi ErrorMsg term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
" hi VertSplit
" hi IncSearch
hi LineNr term=NONE ctermfg=NONE guifg=NONE
hi CursorLineNr cterm=bold ctermfg=NONE guifg=NONE
hi MatchParen cterm=reverse ctermbg=NONE guibg=NONE
hi ModeMsg term=NONE cterm=NONE gui=NONE
hi MoreMsg term=NONE ctermfg=NONE gui=NONE guifg=NONE
hi NonText term=NONE ctermfg=NONE gui=NONE guifg=NONE
hi Pmenu term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guibg=NONE
" TODO PmenuSel there looks to be a bug with Vim not clearing escape codes?
hi PmenuSel ctermfg=NONE ctermbg=NONE guibg=NONE
hi PmenuSbar ctermbg=NONE guibg=NONE
hi PmenuThumb ctermbg=NONE guibg=NONE
hi Question term=NONE ctermfg=NONE gui=NONE guifg=NONE
" hi link QuickFixLine Search
hi Search cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi SpecialKey term=NONE ctermfg=NONE guifg=NONE
hi StatusLine term=reverse cterm=reverse gui=reverse
hi StatusLineNC term=NONE cterm=NONE gui=NONE
hi TabLine term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guibg=NONE
" hi TabLineFill
hi TabLineSel term=NONE cterm=NONE gui=NONE
hi Title cterm=bold ctermfg=NONE gui=bold guifg=NONE
hi Visual term=reverse cterm=reverse ctermbg=NONE gui=reverse guibg=NONE
hi WarningMsg term=reverse cterm=reverse ctermfg=NONE gui=reverse guifg=NONE

if has('clipboard')
	" Same as Visual; ignore the distinction when using monochrome.
	hi VisualNOS term=reverse cterm=reverse gui=reverse
endif

if has('diff')
	hi DiffAdd cterm=bold ctermbg=NONE gui=bold guibg=NONE
	hi DiffChange cterm=bold ctermbg=NONE gui=bold guibg=NONE
	hi DiffDelete cterm=bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
	hi DiffText cterm=reverse ctermbg=NONE gui=reverse guibg=NONE
endif

if has('folding')
	hi Folded term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
	hi FoldColumn term=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
endif

" TODO Do any of the GUIs actually care about these settings? (only tried in
" GTK+, admittedly)
" if has('menu')
" 	hi ToolbarLine term=underline ctermbg=LightGrey guibg=Blue
" 	hi ToolbarButton cterm=bold ctermfg=White ctermbg=DarkGrey gui=bold guifg=White guibg=Grey40
" endif

if has('spell')
	hi SpellBad term=underline cterm=underline ctermbg=NONE guisp=NONE
	hi SpellCap term=underline cterm=underline ctermbg=NONE guisp=NONE
	hi SpellLocal term=underline cterm=underline ctermbg=NONE guisp=NONE
	hi SpellRare term=NONE ctermbg=NONE guisp=NONE
endif

if has('syntax')
	hi ColorColumn cterm=reverse ctermbg=NONE gui=reverse guibg=NONE
	hi CursorColumn term=NONE ctermbg=NONE guibg=NONE
	hi CursorLine term=NONE cterm=NONE guibg=NONE

	hi Comment term=NONE ctermfg=NONE guifg=NONE
	hi Constant term=NONE ctermfg=NONE guifg=NONE
	hi Special term=NONE ctermfg=NONE guifg=NONE
	hi Identifier term=NONE cterm=NONE ctermfg=NONE guifg=NONE
	hi Statement term=NONE ctermfg=NONE gui=NONE guifg=NONE
	hi PreProc term=NONE ctermfg=NONE guifg=NONE
	hi Type term=NONE ctermfg=NONE gui=NONE guifg=NONE
	hi Underlined ctermfg=NONE guifg=NONE
	hi Ignore ctermfg=NONE guifg=NONE
	hi Error cterm=reverse ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
	hi Todo term=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
endif

if has('wildmenu')
	hi WildMenu term=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
endif

if has('conceal')
	hi Conceal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
endif

if has('signs')
	hi SignColumn term=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
endif

if has('terminal')
	hi StatusLineTerm term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
	hi StatusLineTermNC term=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
endif

" }}}

" More shades {{{

if !s:more_shades | finish | endif

if &background ==# 'light'
	hi Normal ctermfg=235 ctermbg=231 guifg=#262626 guibg=#ffffff
	hi VertSplit ctermfg=254 ctermbg=254 guifg=#e4e4e4 guibg=#e4e4e4
	hi Search ctermfg=222 ctermbg=fg guifg=#ffd787 guibg=fg
	hi StatusLine ctermfg=240 guifg=#585858
	hi StatusLineNC ctermbg=254 guibg=#e4e4e4
	hi TabLine ctermfg=240 ctermbg=254 guifg=#585858 guibg=#e4e4e4
	hi TabLineFill ctermfg=254 guifg=#e4e4e4

	if has('diff')
		hi DiffAdd ctermfg=194 guifg=#d7ffd7
		hi DiffChange ctermbg=255 guibg=#eeeeee
		hi DiffDelete ctermfg=224 guifg=#ffd7d7
		hi DiffText ctermbg=153 guibg=#afd7ff
	endif

	if has('syntax')
		hi ColorColumn ctermfg=254 guifg=#e4e4e4
		hi CursorColumn ctermbg=254 guibg=#e4e4e4
		hi CursorLine ctermbg=254 guibg=#e4e4e4

		hi Comment ctermfg=243 guifg=#767676
		hi Todo ctermfg=115 guifg=#87d7af
	endif

	if has('terminal')
		hi StatusLineTerm ctermfg=240 guifg=#585858
		hi StatusLineTermNC ctermbg=254 guibg=#e4e4e4
	endif
else
	hi Normal ctermfg=253 ctermbg=235 guifg=#dadada guibg=#262626
	hi VertSplit ctermfg=237 ctermbg=237 guifg=#3a3a3a guibg=#3a3a3a
	hi Search ctermfg=222 ctermbg=bg guifg=#ffd787 guibg=bg
	hi StatusLine ctermfg=250 guifg=#bcbcbc
	hi StatusLineNC ctermbg=237 guibg=#3a3a3a
	hi TabLine ctermfg=250 ctermbg=237 guifg=#bcbcbc guibg=#3a3a3a
	hi TabLineFill ctermfg=237 guifg=#3a3a3a

	if has('diff')
		hi DiffAdd ctermfg=65 guifg=#5f875f
		hi DiffChange ctermbg=236 guibg=#303030
		hi DiffDelete ctermfg=95 guifg=#875f5f
		hi DiffText ctermbg=24 guibg=#005f87
	endif

	if has('syntax')
		hi ColorColumn ctermfg=237 guifg=#3a3a3a
		hi CursorColumn ctermbg=237 guibg=#3a3a3a
		hi CursorLine ctermbg=237 guibg=#3a3a3a

		hi Comment ctermfg=246 guifg=#949494
		hi Todo ctermfg=29 guifg=#00875f
	endif

	if has('terminal')
		hi StatusLineTerm ctermfg=250 guifg=#bcbcbc
		hi StatusLineTermNC ctermbg=237 guibg=#3a3a3a
	endif
endif

hi LineNr ctermfg=246 guifg=#949494
hi NonText cterm=NONE ctermfg=246 gui=NONE guifg=#949494
hi Pmenu cterm=NONE ctermfg=bg ctermbg=fg gui=NONE guifg=bg guibg=fg
hi PmenuSel ctermfg=fg ctermbg=bg guifg=fg guibg=bg
hi PmenuSbar ctermbg=fg guibg=fg
hi PmenuThumb ctermbg=240 guibg=#585858
hi TabLine cterm=NONE gui=NONE
hi Visual cterm=NONE ctermfg=bg ctermbg=fg gui=NONE guifg=bg guibg=fg

if has('diff')
	hi DiffAdd cterm=NONE,reverse ctermbg=fg gui=reverse guibg=fg
	hi DiffChange cterm=NONE gui=NONE
	hi DiffDelete cterm=NONE,reverse ctermbg=fg gui=reverse guibg=fg
	hi DiffText cterm=bold gui=bold
endif

if has('syntax')
	hi ColorColumn ctermbg=fg guibg=fg
	hi Todo cterm=reverse ctermbg=bg gui=reverse
endif

if has('clipboard')
	hi VisualNOS cterm=NONE ctermfg=bg ctermbg=fg gui=NONE guifg=bg guibg=fg
endif

" TODO this does not belong here
hi SignifySignChange cterm=bold ctermbg=NONE gui=bold guibg=NONE

" }}}
