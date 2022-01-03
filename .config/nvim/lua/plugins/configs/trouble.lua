require('trouble').setup {
    mode = 'document_diagnostics',
    icons = false, -- for filetype icons only
    signs = {
        error = '', warning = '', hint = '', information = '', other = '﫠'
    },
    use_diagnostic_signs = true
}

