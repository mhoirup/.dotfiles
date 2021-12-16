lua << EOF
require("github-theme").setup({
  theme_style = "light"
})
EOF

hi!      TSInclude     guifg=#d03d3d gui=bold,italic
hi! link TSKeyword     TSInclude
hi! link TSConditional TSInclude
hi!      TSVariable    guifg=#24292e


