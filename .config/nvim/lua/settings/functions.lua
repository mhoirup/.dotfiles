fn = vim.fn
function TestFunction()
    local windows = fn.system('tmux list-windows')
    print(windows)
end

vim.api.nvim_set_keymap("n", "<Leader>f", "<cmd>call v:lua.TestFunction()<CR>")
