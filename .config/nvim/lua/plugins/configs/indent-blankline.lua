require 'indent_blankline'.setup({
    char = '│',
    show_first_indent_level = true,
    show_trailing_blankline_indent = false,
    use_treesitter = true,
    filetype_exclude = {
        'markdown', 'txt', 'help', ''
        },
    buftype_exclude = {
        'terminal', 'nofile'
        },
    })

-- vim.opt.list = true
-- vim.opt.listchars:append('space:⋅')
