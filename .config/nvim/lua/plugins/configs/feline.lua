local lsp = require('feline.providers.lsp')
local git = require('feline.providers.git')
vim.cmd 'set termguicolors'
local vi_mode_utils = require('feline.providers.vi_mode')
local function there_is_width(winid)
	return vim.api.nvim_win_get_width(winid) > 80
end
local components = {
    active = {}, inactive = {}
}

table.insert(components.active, {}) 
table.insert(components.active, {})
table.insert(components.inactive, {})

table.insert(components.active[1], {
    provider = ' ',
    hl = function()
        local val = {}
        val.bg = vi_mode_utils.get_mode_color()
        val.fg = 'NONE'
        return val
    end,
    right_sep = '',
})
table.insert(components.active[1], {
    provider = {
        name = 'file_info',
        opts = {
            type = 'unique',
            colored_icon = false,
            file_modified_icon = '[m]',
            file_readonly_icon = ''
        }
    },
    hl = {fg = '#616e88'},
    left_sep = '  ',
})

table.insert(components.active[1], {
    provider = '|',
    enabled = function(winid)
        return lsp.is_lsp_attached() and there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

table.insert(components.active[1], {
    provider = 'diagnostic_errors',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#bf616a'},
})

table.insert(components.active[1], {
    provider = 'diagnostic_warnings',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#ebcb8b'},
})

table.insert(components.active[1], {
    provider = 'diagnostic_hints',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#81a1c1'},
})

table.insert(components.active[1], {
    provider = 'diagnostic_info',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#81a1c1'},
})

table.insert(components.active[1], {
    provider = 'lsp_client_names',
    enabled = function(winid)
        return lsp.is_lsp_attached() and there_is_width(winid)
    end,
    icon = '',
    hl = {fg = '#616e88'},
    left_sep = { str = ' [LSP: ', hl = {fg = '#616e88'}},
    right_sep = { str = '] |', hl = {fg = '#616e88'}},
})



table.insert(components.active[2], {
    provider = 'position',
    hl = {fg = '#616e88'},
})

table.insert(components.inactive[1], {
    provider = {
        name = 'file_info',
        opts = {
            type = 'unique',
            colored_icon = false,
            file_modified_icon = '[m]',
            file_readonly_icon = ''
        }
    },
    hl = {fg = '#616e88'},
    left_sep = '   ',
})

table.insert(components.inactive[1], {
    provider = '|',
    enabled = function(winid)
        return lsp.is_lsp_attached() and there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

-- Icons can be changed in .local/nvim/../feline/lua/feline/providers/lsp.lua
table.insert(components.inactive[1], {
    provider = 'diagnostic_errors',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

table.insert(components.inactive[1], {
    provider = 'diagnostic_warnings',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

table.insert(components.inactive[1], {
    provider = 'diagnostic_hints',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

table.insert(components.inactive[1], {
    provider = 'diagnostic_info',
    enabled = function(winid)
        return there_is_width(winid)
    end,
    hl = {fg = '#616e88'},
})

table.insert(components.inactive[1], {
    provider = 'lsp_client_names',
    enabled = function(winid)
        return lsp.is_lsp_attached() and there_is_width(winid)
    end,
    icon = '',
    hl = {fg = '#616e88'},
    left_sep = { str = ' [LSP: ', hl = {fg = '#616e88'}},
    right_sep = { str = '] |', hl = {fg = '#616e88'}},
})


local mode_colours = {
    NORMAL = '#88c0d0',
    OP = '#88c0d0',
    INSERT = '#eceff4',
    VISUAL = '#8fbcbb',
    LINES = '#8fbcbb',
    BLOCK = '#8fbcbb',
    REPLACE = '#ebcb8b',
    ['V-REPLACE'] = '#ebcb8b',
    ENTER = '#ebcb8b',
    MORE = '#ebcb8b',
    SELECT = '#8fbcbb',
    COMMAND = '#88c0d0',
    SHELL = '#88c0d0',
    TERM = '#88c0d0',
}

require('feline').setup({
    colors = { fg = "NONE", bg = "NONE" },
    -- preset = 'noicon',
    vi_mode_colors = mode_colours,
    components = components,
})
