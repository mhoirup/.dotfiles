nnoremap <silent> tt :call OpenRepl('-v')<CR>
noremap <silent> tv :call OpenRepl('-h')<CR>
" nnoremap <silent> tt :call OpenRepl('vsplit')<CR>
" noremap <silent> tv :call OpenRepl('hsplit')<CR>
noremap <silent> <Space> :call SendToRepl()<CR>
noremap <silent> <leader>c :SlimeSend1 system('clear')<CR>
noremap <silent> <leader>g yiw:SlimeSend1 dplyr::glimpse(<C-r>")<CR>
noremap <silent> <leader>df yiw:SlimeSend1 tibble::as_tibble(<C-r>")<CR>
noremap <silent> <leader>w yiw:SlimeSend1 <C-r>"<CR>
noremap <silent> <leader>h yiw:SlimeSend1 head(<C-r>")<CR>
noremap <silent> <leader>n yiw:SlimeSend1 names(<C-r>")<CR>
noremap <silent> <leader>s yiw:SlimeSend1 dim(<C-r>")<CR>
