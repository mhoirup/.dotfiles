local lsp = vim.lsp
lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(
    lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false, underline = false,
        signs = true, update_in_insert = true,
        }
)

local signs = {
    Error = "● ", Warning = "● ", Hint = "● ",
    Information = "● ", Other = '● '
}

-- local signs = {
--     Error = "  ", Warning = "  ", Hint = "  ",
--     Information = "  ", Other = '﫠 '
-- }

for type, icon in pairs(signs) do
    local hl = "LspDiagnosticsSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())  
capabilities.textDocument.completion.resolveProvider = true  
capabilities.textDocument.completion.triggerCharacters = {  
    '.', ':', '$', '@'  
}
-- To install: install.packages("languageserver")
require('lspconfig').r_language_server.setup {  
    capabilities = capabilities  
}

-- To install: brew install pyright
require('lspconfig').pyright.setup {
    capabilities = capabilities,
}



