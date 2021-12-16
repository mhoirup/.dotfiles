require('trouble').setup {
    mode = 'lsp_document_diagnostics',
    icons = false, -- for filetype icons only
    signs = {
        error = '', warning = '', hint = '', information = '', other = '﫠'
    },
    use_lsp_diagnostic_signs = true
}

