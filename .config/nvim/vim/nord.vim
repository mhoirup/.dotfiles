lua << EOF
require('nord').set()
EOF

let g:repl_colour = '#81a1c1'
" Treesitter highlights
hi!      TSBoolean                 guifg=#ebcb8b               gui=bold
hi!      TSFunction                guifg=#88c0d0               gui=bold
hi!      TSKeyword                 guifg=#81a1c1               gui=bold,italic
hi! link TSInclude                 TSKeyword
hi! link TSRepeat                  TSKeyword
hi!      TSProperty                guifg=#eceff4
hi! link TSParameter               TSProperty
hi!      TSPunctDelimiter          guifg=#81a1c1
hi! link TSConditional             TSKeyword
hi! link TSMethod                  TSFunction
hi! link TSType                    TSVariable
hi! link luaTSKeywordfunction      TSKeyword
hi! link luaTSConstBuiltin         TSBoolean
" Editor highlights
hi!      CursorLineNr              guifg=#eceff4 guibg=#2e3440
hi!      CursorLine                              guibg=none
hi!      EndOfBuffer               guifg=#2e3440
hi!      MatchParen                              guibg=#3b4252
hi!      MsgArea                   guifg=#616e88 guibg=#2e3440
hi!      PmenuSel                  guifg=#2e3440 guibg=#88c0d0
hi!      Search                    guifg=#2e3440 guibg=#ebcb8b gui=none
hi!      VertSplit                 guifg=#4c566a
hi!      healthWarning             guifg=#ebcb8b
" VimL highlights
hi!      vimMapRhs                 guifg=#8fbcbb
hi!      vimNotation               guifg=#8fbcbb
hi! link vimFunction               TSFunction
hi! link vimFuncName               TSFunction
hi! link vimHiBang                 vimHighlight
hi! link vimNotFunc                TSKeyword
hi! link vimNotVar                 vimVar
hi! link vimOperParen              TSPunctBracet
hi! link vimSep                    TSPunctBracet
hi! link vimVar                    Normal
" Trouble nvim highlights
hi link TroubleCount               TSFunction
hi link TroubleFile                Comment
hi link TroubleFoldIcon            Comment
" R highlights
hi!      rDollar                   guifg=#81a1c1               gui=bold
hi! link rDelimiter                rDollar
hi! link rFunctionAssign           TSFunction
hi! link rConstant                 TSBoolean 
hi! link rDoubleBracket            TSPunctBracket
" Python highlights
hi! link pythonTSConstructor       TSFunction
hi! link pythonTSKeywordOperator   TSKeyword
" LaTeX highlights
hi! link texFileArg                Normal
hi! link texFileOpt                texFileArg
hi! link TSMath                    TSFunction
hi! link latexTSTitle              TSBoolean
" LSP highlights
hi!      LSPDiagnosticsSignWarning guifg=#ebcb8b
" CMP highlights
hi!      CmpItemAbbrMatch          guifg=#88c0d0
hi! link CmpItemAbbrMatchFuzzy     CmpItemAbbrMatch
hi! link CmpItemKind               Comment
hi! link CmpItemMenu               Comment
" UltiSnips Highlights
hi!      snipLeadingSpaces        guifg=#2e3440 guibg=#2e3440
hi!      snipMirror               guifg=#ebcb8b
hi!      snipSnippetOptionFlag    guifg=#b48ead
hi!      snipSnippetTrigger       guifg=#88c0d0
hi!      snipTabStop              guifg=#ebcb8b
hi!      snipSnippetHeaderKeyword guifg=#81a1c1               gui=bold
hi!      snipSnippetFooterKeyword guifg=#81a1c1               gui=bold
hi! link snipContextValue         snipContextKeyword
let g:fzf_colors = 
    \ { 'fg':      ['fg', 'Normal'   ],
    \   'bg':      ['bg', 'Normal'   ],
    \   'hl':      ['fg', 'SpecialChar' ],
    \   'fg+':     ['fg', 'Normal'   ],
    \   'bg+':     ['bg', 'Normal'   ],
    \   'hl+':     ['fg', 'SpecialChar' ],
    \   'info':    ['fg', 'Comment'  ],
    \   'border':  ['fg', 'Comment'  ],
    \   'prompt':  ['fg', 'Boolean'  ],
    \   'pointer': ['fg', 'Boolean'  ],
    \   'marker':  ['fg', 'Boolean'  ],
    \   'spinner': ['fg', 'Label'    ],
    \   'header':  ['fg', 'Comment'  ],
    \   'gutter':  ['bg', 'Normal'   ]
    \ }

