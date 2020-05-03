" Vim color file
" Description: Monochrome scheme
" Maintainer: Chris Rawnsley <chris@puny.agency>
" Version: 1.0.1
" Source: https://github.com/casr/vim-colors-normalise
" Modified: 2020 May 3

" This colour scheme will, by default, match your terminal's foreground and
" background colours. You can override this behaviour by setting the `Normal`
" highlighting group to something different. For example:
"
"     hi Normal ctermfg=231 ctermbg=99

hi clear
if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'normalise'

hi Normal ctermfg=NONE ctermbg=NONE

hi Directory term=NONE ctermfg=NONE guifg=NONE
" hi link EndOfBuffer NonText
hi ErrorMsg term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
" hi VertSplit
" hi IncSearch
hi LineNr term=NONE ctermfg=NONE guifg=NONE
hi CursorLineNr cterm=bold ctermfg=NONE guifg=NONE
hi MatchParen term=bold cterm=bold ctermbg=NONE guibg=NONE
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
" GTK+, admittedly...)
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
