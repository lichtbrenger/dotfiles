" Name:         Cold Brew Latte
" Author:       lichtbrenger
" Maintainer:   lichtbrenger
" Website:      https://www.github.com/lichtbrenger/ColdBrewLatte
" License:      Same as Vim
" Last Updated: Fri 02 Sep 2022 09:44:22 MSK

set background=dark

hi clear
let g:colors_name = 'ColdBrewLatte'

let s:t_Co = &t_Co

hi! link Terminal Normal
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Repeat
hi! link Debug Special
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Number
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link lCursor Cursor
hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi link String None 
hi link Structure NONE
hi link StorageClass NONE
hi link TypeDef NONE
hi link LineNrAbove NONE
hi link LineNrBelow NONE

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#000000', '#000000', '#000000', '#000000', '#000000', '#000000', '#0005e5', '#000000', '#000000', '#000000', '#000000', '#000000', '#000000', '#000000', '#000000']
endif
hi Normal guifg=#DCD7BA guibg=#1e1e2e gui=NONE cterm=NONE
hi QuickFixLine guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi ColorColumn guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi CursorColumn guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi CursorLine guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi CursorLineNr guifg=#6e738d guibg=NONE gui=bold cterm=bold
hi Folded guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi Conceal guifg=#DCD7BA guibg=NONE gui=NONE cterm=NONE
hi Cursor guifg=#DCA561 guibg=#24273a gui=NONE cterm=NONE
hi Directory guifg=#DCD7BA guibg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#f5bde6 guibg=#cdd6f4 gui=bold cterm=NONE
hi ErrorMsg guifg=#DCD7BA guibg=None gui=NONE cterm=NONE
hi FoldColumn guifg=#DCD7BA guibg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=NONE guibg=#None gui=reverse cterm=reverse
hi LineNr guifg=#363a4f guibg=NONE gui=NONE cterm=NONE
hi LineNrAbove guifg=#494d64 guibg=NONE gui=NONE cterm=NONE
hi LineNrBelow guifg=#494d64 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#ee99a0 guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#b8c0e0 guibg=#1E1E2E gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi MoreMsg guifg=#ee99a0 guibg=NONE gui=bold cterm=bold
hi NonText guifg=#ee99a0 guibg=NONE gui=bold cterm=bold
hi Pmenu guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#1e2030 gui=NONE cterm=NONE
hi PmenuSel guifg=#6e738d guibg=#000000 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#1e2030 gui=NONE cterm=NONE
hi Question guifg=#f5bde6 guibg=NONE gui=bold cterm=bold
hi Search guifg=#f5bde6 guibg=#1e2030 gui=NONE cterm=NONE
hi SignColumn guifg=#DCD7BA guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#b8c0e0 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f5bde6 guibg=NONE guisp=#000000 gui=undercurl cterm=underline
hi SpellCap guifg=#f5bde6 guibg=NONE guisp=#000000 gui=undercurl cterm=underline
hi SpellLocal guifg=#f5dbe6 guibg=NONE guisp=#ffffff gui=undercurl cterm=underline
hi SpellRare guifg=#f5bde6 guibg=NONE guisp=#ffffff gui=undercurl cterm=underline
hi StatusLine guifg=#b8c0e0 guibg=#1e1e2e gui=bold cterm=bold
hi StatusLineNC guifg=#b8c0e0 guibg=#1e1e2e gui=NONE cterm=NONE
hi TabLine guifg=#6e738d guibg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=#ee99a0 guibg=NONE gui=reverse cterm=reverse
hi TabLineSel guifg=#6e738d guibg=NONE gui=bold cterm=bold
hi Terminal guifg=#1e2030 guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#DCA561 guibg=NONE gui=bold cterm=bold
hi VertSplit guifg=#6e738d guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=#6e738d guibg=#1e2030 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE gui=bold,underline cterm=underline
hi WarningMsg guifg=#a6da95 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#6e738d guibg=#1e2030 gui=NONE cterm=NONE
hi Comment guifg=#b7bdf8 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f5bde6 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#a6da95 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#1e2030 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#7dc4e4 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#eed49f guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#DCD7BA guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#eed49f guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#f6bde6 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#f5bde6 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#6e738d guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#ee99a0 guibg=NONE gui=bold cterm=bold
hi Todo guifg=#c8c093 guibg=#1e2030 gui=NONE cterm=NONE
hi Type guifg=#c8c093 guibg=NONE gui=bold cterm=bold
hi Typedef guifg=#16161d guibg=NONE gui=bold cterm=bold
hi StorageClass guifg=#16161d guibg=NONE gui=bold cterm=bold
hi Structure guifg=#16161d guibg=NONE gui=bold cterm=bold
hi Underlined guifg=#DCD7BA guibg=NONE gui=underline cterm=underline
hi CursorIM guifg=#b8c0e0 guibg=#b8c0e0 gui=NONE cterm=NONE
hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi ToolbarButton guifg=#6e738d guibg=#1e2030 gui=bold cterm=bold
hi DiffAdd guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi DiffChange guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE
hi DiffText guifg=#6e738d guibg=#1e2030 gui=NONE cterm=NONE
hi DiffDelete guifg=#DCD7BA guibg=#1e2030 gui=NONE cterm=NONE

if s:t_Co >= 256
  hi Normal ctermfg=51 ctermbg=16 cterm=NONE
  hi QuickFixLine ctermfg=231 ctermbg=29 cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=160 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
  hi CursorLineNr ctermfg=226 ctermbg=NONE cterm=bold
  hi Folded ctermfg=51 ctermbg=59 cterm=NONE
  hi Conceal ctermfg=59 ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=16 ctermbg=51 cterm=NONE
  hi Directory ctermfg=51 ctermbg=16 cterm=NONE
  hi EndOfBuffer ctermfg=21 ctermbg=16 cterm=NONE
  hi ErrorMsg ctermfg=231 ctermbg=160 cterm=NONE
  hi FoldColumn ctermfg=51 ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=NONE ctermbg=16 cterm=reverse
  hi LineNr ctermfg=226 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=30 cterm=NONE
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=29 ctermbg=NONE cterm=bold
  hi NonText ctermfg=21 ctermbg=NONE cterm=bold
  hi Pmenu ctermfg=231 ctermbg=238 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=250 cterm=NONE
  hi PmenuSel ctermfg=16 ctermbg=44 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=231 cterm=NONE
  hi Question ctermfg=46 ctermbg=NONE cterm=bold
  hi Search ctermfg=16 ctermbg=226 cterm=NONE
  hi SignColumn ctermfg=51 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=51 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=21 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=226 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=201 ctermbg=NONE cterm=underline
  hi StatusLine ctermfg=16 ctermbg=51 cterm=bold
  hi StatusLineNC ctermfg=16 ctermbg=44 cterm=NONE
  hi TabLine ctermfg=16 ctermbg=30 cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=16 cterm=reverse
  hi TabLineSel ctermfg=51 ctermbg=16 cterm=bold
  hi Terminal ctermfg=51 ctermbg=16 cterm=NONE
  hi Title ctermfg=201 ctermbg=NONE cterm=bold
  hi VertSplit ctermfg=16 ctermbg=44 cterm=NONE
  hi Visual ctermfg=16 ctermbg=145 cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=16 cterm=underline
  hi WarningMsg ctermfg=196 ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=16 ctermbg=226 cterm=NONE
  hi Comment ctermfg=111 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=201 ctermbg=NONE cterm=NONE
  hi Error ctermfg=231 ctermbg=196 cterm=NONE
  hi Function ctermfg=231 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=87 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=16 ctermbg=16 cterm=NONE
  hi Operator ctermfg=196 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=213 ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=231 ctermbg=NONE cterm=NONE
  hi Special ctermfg=196 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=131 ctermbg=NONE cterm=bold
  hi Todo ctermfg=21 ctermbg=226 cterm=NONE
  hi Type ctermfg=83 ctermbg=NONE cterm=bold
  hi Underlined ctermfg=111 ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=16 ctermbg=254 cterm=bold
  hi DiffAdd ctermfg=231 ctermbg=65 cterm=NONE
  hi DiffChange ctermfg=231 ctermbg=67 cterm=NONE
  hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
  hi DiffDelete ctermfg=231 ctermbg=133 cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=cyan ctermbg=black cterm=NONE
  hi QuickFixLine ctermfg=white ctermbg=darkgreen cterm=NONE
  hi ColorColumn ctermfg=cyan ctermbg=darkred cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=yellow ctermbg=NONE cterm=underline
  hi Folded ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=black ctermbg=cyan cterm=NONE
  hi Directory ctermfg=cyan ctermbg=black cterm=NONE
  hi EndOfBuffer ctermfg=darkblue ctermbg=black cterm=NONE
  hi ErrorMsg ctermfg=white ctermbg=darkred cterm=NONE
  hi FoldColumn ctermfg=cyan ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=NONE ctermbg=black cterm=reverse
  hi LineNr ctermfg=yellow ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=darkcyan cterm=NONE
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=bold
  hi NonText ctermfg=darkblue ctermbg=NONE cterm=bold
  hi Pmenu ctermfg=white ctermbg=darkgrey cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=grey cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkcyan cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=white cterm=NONE
  hi Question ctermfg=green ctermbg=NONE cterm=bold
  hi Search ctermfg=black ctermbg=yellow cterm=NONE
  hi SignColumn ctermfg=cyan ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=red ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=yellow ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=magenta ctermbg=NONE cterm=underline
  hi StatusLine ctermfg=black ctermbg=cyan cterm=bold
  hi StatusLineNC ctermfg=black ctermbg=darkcyan cterm=NONE
  hi TabLine ctermfg=black ctermbg=darkcyan cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=black cterm=reverse
  hi TabLineSel ctermfg=cyan ctermbg=black cterm=bold
  hi Terminal ctermfg=cyan ctermbg=black cterm=NONE
  hi Title ctermfg=magenta ctermbg=NONE cterm=bold
  hi VertSplit ctermfg=black ctermbg=darkcyan cterm=NONE
  hi Visual ctermfg=black ctermbg=darkgrey cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=black cterm=underline
  hi WarningMsg ctermfg=red ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=yellow cterm=NONE
  hi Comment ctermfg=blue ctermbg=NONE cterm=NONE
  hi Constant ctermfg=magenta ctermbg=NONE cterm=NONE
  hi Error ctermfg=white ctermbg=red cterm=NONE
  hi Function ctermfg=white ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=cyan ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=black ctermbg=black cterm=NONE
  hi Operator ctermfg=red ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=magenta ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=white ctermbg=NONE cterm=NONE
  hi Special ctermfg=red ctermbg=NONE cterm=NONE
  hi Statement ctermfg=darkred ctermbg=NONE cterm=bold
  hi Todo ctermfg=blue ctermbg=yellow cterm=NONE
  hi Type ctermfg=green ctermbg=NONE cterm=bold
  hi Underlined ctermfg=blue ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=black ctermbg=grey cterm=bold
  hi DiffAdd ctermfg=white ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=white ctermbg=blue cterm=NONE
  hi DiffText ctermfg=black ctermbg=grey cterm=NONE
  hi DiffDelete ctermfg=white ctermbg=magenta cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=darkcyan ctermbg=black cterm=NONE
  hi QuickFixLine ctermfg=grey ctermbg=darkgreen cterm=NONE
  hi ColorColumn ctermfg=darkcyan ctermbg=darkred cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=darkyellow ctermbg=NONE cterm=underline
  hi Folded ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=grey ctermbg=NONE cterm=NONE
  hi Directory ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=grey ctermbg=darkred cterm=NONE
  hi FoldColumn ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=NONE ctermbg=NONE cterm=reverse
  hi LineNr ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=black ctermbg=darkcyan cterm=NONE
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi NonText ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=grey ctermbg=NONE cterm=NONE
  hi PmenuSbar ctermfg=grey ctermbg=grey cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkcyan cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=darkcyan cterm=NONE
  hi Question ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Search ctermfg=black ctermbg=darkyellow cterm=NONE
  hi SignColumn ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=darkyellow cterm=reverse
  hi SpellCap ctermfg=darkblue ctermbg=darkyellow cterm=reverse
  hi SpellLocal ctermfg=darkyellow ctermbg=NONE cterm=reverse
  hi SpellRare ctermfg=darkmagenta ctermbg=darkyellow cterm=reverse
  hi StatusLine ctermfg=darkcyan ctermbg=NONE cterm=bold,reverse
  hi StatusLineNC ctermfg=black ctermbg=darkcyan cterm=NONE
  hi TabLine ctermfg=black ctermbg=darkcyan cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=reverse
  hi TabLineSel ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Terminal ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Title ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi VertSplit ctermfg=black ctermbg=darkcyan cterm=NONE
  hi Visual ctermfg=black ctermbg=grey cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=underline
  hi WarningMsg ctermfg=darkred ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Comment ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi Constant ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi Error ctermfg=grey ctermbg=darkred cterm=NONE
  hi Function ctermfg=grey ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=black ctermbg=NONE cterm=NONE
  hi Operator ctermfg=darkred ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=grey ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkred ctermbg=NONE cterm=NONE
  hi Statement ctermfg=darkred ctermbg=NONE cterm=NONE
  hi Todo ctermfg=darkblue ctermbg=darkyellow cterm=NONE
  hi Type ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=darkblue ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=black ctermbg=grey cterm=NONE
  hi DiffAdd ctermfg=white ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=white ctermbg=darkblue cterm=NONE
  hi DiffText ctermfg=black ctermbg=grey cterm=NONE
  hi DiffDelete ctermfg=white ctermbg=darkmagenta cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CursorColumn term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  unlet s:t_Co
  finish
endif

" Background: dark
" Color: xterm0         #000000          16                black
" Color: xterm1         #cd0000          160               darkred
" Color: xterm2         #00cd00          40                darkgreen
" Color: xterm3         #cdcd00          184               darkyellow
" Color: xterm4         #0000ee          20                darkblue
" Color: xterm5         #cd00cd          164               darkmagenta
" Color: xterm6         #00cdcd          44                darkcyan
" Color: xterm7         #e5e5e5          254               grey
" Color: xterm8         #7f7f7f          102               darkgrey
" Color: xterm9         #ff0000          196               red
" Color: xterm10        #00ff00          46                green
" Color: xterm11        #ffff00          226               yellow
" Color: xterm12        #5c5cff          63                blue
" Color: xterm13        #ff00ff          201               magenta
" Color: xterm14        #00ffff          51                cyan
" Color: xterm15        #ffffff          231               white
" Color: Pmenu          #444444          238               darkgrey
" Color: CursorLine     #3a3a3a          237               darkgrey
" Color: rgbGrey40      #666666          59                darkgrey
" Color: rgbDarkGrey    #a9a9a9          145               darkgrey
" Color: rgbBlue        #0000ff          21                darkblue
" Color: rgbDarkCyan    #008b8b          30                darkcyan
" Color: Directory      #00ffff          51                cyan
" Color: rgbSeaGreen    #2e8b57          29                darkgreen
" Color: rgbGrey        #bebebe          250               grey
" Color: Question       #00ff00          46                green
" Color: SignColumn     #a9a9a9          248               grey
" Color: SpecialKey     #00ffff          51                cyan
" Color: Title          #ff00ff          201               magenta
" Color: WarningMsg     #ff0000          196               red
" Color: ToolbarLine    #7f7f7f          244               darkgrey
" Color: Underlined     #80a0ff          111               blue
" Color: elfComment     #80a0ff          111               blue
" Color: elfIdentifier  #40ffff          87                cyan
" Color: elfStatement   #aa4444          131               darkred
" Color: elfPreProc     #ff80ff          213               magenta
" Color: elfType        #60ff60          83                green
" Color: elfBlue        #0000ff          21                blue
" Term colors: xterm0 xterm1 xterm2 xterm3 xterm4 xterm5 xterm6 xterm7
" Term colors: xterm8 xterm9 xterm10 xterm11 xterm12 xterm13
" Term colors: xterm14 xterm15
" Color: bgDiffA     #5F875F        65             darkgreen
" Color: bgDiffC     #5F87AF        67             blue
" Color: bgDiffD     #AF5FAF        133            magenta
" Color: bgDiffT     #C6C6C6        251            grey
" Color: fgDiffW     #FFFFFF        231            white
" Color: fgDiffB     #000000        16             black
" Color: bgDiffC8    #5F87AF        67             darkblue
" Color: bgDiffD8    #AF5FAF        133            darkmagenta
" vim: et ts=2 sw=2
