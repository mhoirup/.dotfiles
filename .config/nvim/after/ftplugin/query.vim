autocmd BufWrite <buffer> call CopyFolder()

fun! CopyFolder()
    let filepath = fnamemodify(expand('%'), ':h')
    let destination = '~/.config/nvim/treesitter-copy/'
    call system('cp -r ' . filepath . ' ' . destination)
endfun
