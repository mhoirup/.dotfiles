nnoremap <silent> tt :call OpenRepl('-v')<CR>
noremap <silent> <Space> :call SendToRepl()<CR>
vnoremap <silent> <Space> :SlimeSend<CR>``
nnoremap <silent> <leader>w yiw:SlimeSend1 <C-r>"<CR>
nnoremap <silent> <leader>h yiw:SlimeSend1 pd.DataFrame(<C-r>").head()<CR>
nnoremap <silent> <leader>s yiw:SlimeSend1 <C-r>".shape<CR>
nnoremap <silent> <leader>df yiw:SlimeSend1 pd.DataFrame(<C-r>")<CR>
nnoremap <silent> <leader>c :SlimeSend1 clear<CR>
noremap <silent> <C-u> :call TmuxScrollReplUp()<CR>
noremap <silent> <C-d> :call TmuxScrollReplDown()<CR>
noremap <silent> <C-g> :call TmuxScrollReplBottom()<CR>
