
function! OpenRepl(direction)
    let repls = {'python': 'ipython3', 'r': 'R --silent'}
    let b:repl_active = 1
    let g:slime_target = 'tmux'
    let pane = str2nr(system('tmux display-message -p "#{pane_index}"')) + 1
    call system('tmux split-window '.a:direction.' -d '.repls[&ft])
    call system('tmux select-pane -t :.'.pane.' -P "fg=blue" \; select-pane -l')
    let b:slime_config = {"socket_name": "default", "target_pane": ':.'.pane}
    " ==> IF KITTY WITHOUT TMUX <==
    " let g:slime_target = 'kitty'
    " let pane = system('kitty @ launch --location='.a:direction.' --keep-focus --color foreground='.g:repl_colour.' '.repls[&ft])
    " let pane = substitute(pane, '\n\+$', '', '')
    " let b:slime_config = {'window_id': pane, 'listen_on': ''}
endfunction

fun! SendToRepl()
    if !exists('b:repl_active')
        call inputsave()
        let pane = input('Enter repl pane: ')
        call inputrestore()
        let g:slime_target = 'tmux'
        let b:slime_config = {"socket_name": "default", "target_pane": ':.'.pane}
        let b:repl_active = 1
    endif
    let chars = strcharpart(strpart(getline(line('.') + 1), col(0) - 1), 0, &ts)
    if chars == repeat(' ', &ts) && strlen(chars) != 0
        exe 'call feedkeys("{j", "x") | let start = line(".")'
        exe 'call feedkeys("}k", "x") | let end = line(".")'
        exe start.','.end.'SlimeSend'
    else
        exe 'SlimeSend | call feedkeys("j0")'
    endif
endfun

fun! TmuxWindowName(...)
    if &ft != 'fzf'
        call system('tmux rename-window '. a:1)
    endif
endfun

function! TmuxScrollReplUp()
    let pane = str2nr(system('tmux display-message -p "#{pane_index}"')) + 1
    call system('tmux copy-mode -e -u -t :.'.pane)
endfunction

function! TmuxScrollReplDown()
    let pane = str2nr(system('tmux display-message -p "#{pane_index}"')) + 1
    call system('tmux send-keys -t :.'.pane.' C-d')
endfunction

function! TmuxScrollReplUp()
    let pane = str2nr(system('tmux display-message -p "#{pane_index}"')) + 1
    call system('tmux copy-mode -e -u -t :.'.pane)
endfunction

function! TmuxScrollReplBottom()
    let pane = str2nr(system('tmux display-message -p "#{pane_index}"')) + 1
    call system('tmux send-keys -t :.'.pane.' G')
    call system('tmux send-keys -t :.'.pane.' C-d')
endfunction





