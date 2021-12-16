require('nvim-treesitter.configs').setup({
    ensure_installed = {
        'r',
        'python',
        'lua',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
        },
    })
