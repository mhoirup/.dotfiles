hi!     texImport       guifg=#81a1c1 gui=bold,italic
hi!     texFunction     guifg=#81a1c1 gui=bold,italic
hi!     texHeader       guifg=#ebcb8b gui=bold,italic
hi      texSection      guifg=#616e88
hi      texFormatFunc   guifg=#616e88
hi      texHighlight    guifg=#d08770 gui=bold
hi link texSubtleDelim  texFormatFunc
hi      texEnvStatement guifg=#616e88
hi      texEnvName      guifg=#a3be8c gui=bold
hi      texMath         guifg=#88c0d0
hi      texComment      guifg=#616e88
hi      texMathDelim    guifg=#616e88
hi      texNewLine      guifg=#ebcb8b

"
" hi texCommand guifg=#81a1c1
" hi texEnvironment guifg=#a3be8c
" hi texBeginEnd guifg=#616e88
" hi texMathDelimiter guifg=#616e88
" hi texTextFormat guifg=#616e88
" hi texInlineMathZone guifg=#88c0d0
" hi texFunction guifg=#616e88
" hi texEmphasis guifg=#b48ead gui=italic
" hi texItem guifg=#b48ead
" hi texBold guifg=#d08770 gui=bold
" hi texMono guifg=#8fbcbb
" hi texSmallCaps guifg=#8fbcbb
" hi texNewLine guifg=#ebcb8b
" hi texNewLineSpacing guifg=#ebcb8b
"
syntax match texComment '\v\%.*'
syntax match texFunction '\v^\zs\\\w+\ze\{' nextgroup=texFuncArg,texFuncArg
syntax region texFuncArg matchgroup=texDelim start='\[' end='\]' contained concealends nextgroup=texFileArg
syntax region texFuncArg matchgroup=texDelim start='{' end='}' contained concealends
" syntax match texComment '^%.*'
" syntax match texComment '\s%.*'

" syntax match texFunction '\\noindent'
" syntax match texFunction '\\hfill'
" syntax match texFunction '\\null'

" syntax match texItem '\v^\s{-}\zs\\item\ze'

syntax match texImport '\\documentclass' nextgroup=texFileOpt,texFileArg
syntax match texImport '\\usepackage' nextgroup=texFileOpt,texFileArg
syntax region texFileOpt matchgroup=texDelim start='\[' end='\]' contained concealends nextgroup=texFileArg
syntax region texFileArg matchgroup=texDelim start='{' end='}' contained concealends

syntax match texFormatFunc '\v\s\zs\\highlight\ze\{' nextgroup=texHighlight
syntax region texHighlight matchgroup=texSubtleDelim start='{' end='}' contained concealends

syntax  match  texEnvStatement '\\begin' nextgroup=texEnvName
syntax  match  texEnvStatement '\\end' nextgroup=texEnvName
syntax  region texEnvName matchgroup=texDelim start='{' end='}' contained concealends

syntax  match  texSection '^\s{-}\\section\*' nextgroup=texHeader
syntax  match  texSection '\v^\s{-}\\section' nextgroup=texHeader
syntax  match  texSection '\v^\s{-}\zs\\\w+section\ze' nextgroup=texHeader
syntax  region texHeader matchgroup=texSubtleDelim start='{' end='}' contained concealends

syntax  match  texMathDelim '\\('
syntax  match  texMathDelim '\\)'
syntax  region texMath matchgroup=texMathDelim start='\\(' end='\\)' concealends

syntax  match  texMathDelim '\\\['
syntax  match  texMathDelim '\\\]'
syntax  region texMath matchgroup=texMathDelim start='\\\[' end='\\\]' concealends

syntax  match  texMathDelim '\$'
syntax  region texMath matchgroup=texMathDelim start='\$' end='\$' concealends

syntax  match  texMathDelim '\\begin{gather}'
syntax  match  texMathDelim '\\end{gather}'
syntax  region texMath matchgroup=texMathDelim start='\\begin{gather}' end='\\end{gather}' concealends contains=texNewLine

syntax  match  texMathDelim '\\begin{align}'
syntax  match  texMathDelim '\\end{align}'
syntax  region texMath matchgroup=texMathDelim start='\\begin{align}' end='\\end{align}' concealends contains=texNewLine

syntax match texSubtleDelim '\\{' contained
syntax match texSubtleDelim '\\}' contained
syntax match texDelim '\\{' contained
syntax match texDelim '\\}' contained
syntax match texDelim '\[' contained
syntax match texDelim '\]' contained
syntax match texNewLine '\\\\' contained
" syntax region texNewLineSpacing matchgroup=texDelimiter start='\[' end='\]' contained concealends

" syntax match texTextFormat '\\emph\>' nextgroup=texEmphasis
" syntax region texEmphasis matchgroup=texDelimiter start='{' end='}' contained concealends
" syntax match texTextFormat '\\textbf\>' nextgroup=texBold
" syntax region texBold matchgroup=texDelimiter start='{' end='}' contained concealends
" syntax match texTextFormat '\\texttt\>' nextgroup=texMono
" syntax region texMono matchgroup=texDelimiter start='{' end='}' contained concealends
" syntax match texTextFormat '\\textsc\>' nextgroup=texSmallCaps
" syntax region texSmallCaps matchgroup=texDelimiter start='{' end='}' contained concealends


