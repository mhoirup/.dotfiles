let mapleader = 'æ'
inoremap <S-left> <C-o>_
inoremap <S-right> <C-o>$
inoremap åb+ <C-w>
nnoremap + <S-o><ESC>j
nnoremap - o<Esc>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-0> ^
nnoremap <S-Tab> <<
nnoremap <S-g> Gzz
nnoremap <S-j> 10j
nnoremap <S-k> 10k
nnoremap <Tab> >>
nnoremap <expr> <silent> q len(getbufinfo({'buflisted':1})) == 1 ? ':up<bar>q!<CR>':':up<bar>bd!<CR>'
nnoremap <leader>q ciw'<left><C-o>p'<Esc>
nnoremap <leader>x <cmd>TroubleToggle lsp_document_diagnostics<CR>
nnoremap <silent> * *``
nnoremap <silent> <A-left> :vertical resize -5<CR>
nnoremap <silent> <A-right> :vertical resize +5<CR>
nnoremap <silent> <BS> :b#<CR>
nnoremap <silent> <C-f> :FZF ~<CR>
nnoremap <silent> <C-p> :NvimTreeToggle<CR>
nnoremap <silent> <Esc> :noh<CR>
nnoremap <silent> <S-m> :TSHighlightCapturesUnderCursor<CR>
" nnoremap <silent> <S-m> :call GeHighlight()<CR>
" nnoremap <silent> <leader>r :w!<bar>:so ~/.config/nvim/init.lua<bar>e!<CR>
nnoremap <silent> <leader>r :w!<bar>:luafile ~/.config/nvim/init.lua<CR>
nnoremap <silent> åb+ :Buffers<CR>
nnoremap m q
tnoremap <Esc> <C-\><C-n>
vnoremap <Esc> <C-c>
vnoremap <S-Tab> <gv
vnoremap <S-j> 10j
vnoremap <S-k> 10k
vnoremap <Tab> >gv
vnoremap <leader>f zft
