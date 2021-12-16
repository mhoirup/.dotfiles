" autocmd BufRead,BufAdd,BufEnter * if expand('%') == '.Rprofile' | set ft=r | endif
autocmd BufEnter,FocusGained,BufRead * call system('tmux rename-window '.expand('%:t'))
autocmd VimLeave * call system('tmux rename-window zsh')
autocmd FileType tex set syntax=tex-custom
