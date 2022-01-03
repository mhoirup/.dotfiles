local cmp = require'cmp'
vim.cmd 'set completeopt=menu,menuone,noselect,noinsert'
vim.opt.shortmess:append 'c'

local symbol_map = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "ﴯ",
	Interface = "",
	Module = "",
	Property = "ﰠ",
	Unit = "塞",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "פּ",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

local has_any_words_before = function()
    if vim.api.nvim_buf_get_option(0, 'buftype') == 'prompt' then
        return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

local press = function(key)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), 'n', true)
end

cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.get_selected_entry() == nil and vim.fn['UltiSnips#CanExpandSnippet']() == 1 then
                press('<C-R>=UltiSnips#ExpandSnippet()<CR>')
            elseif vim.fn['UltiSnips#CanJumpForwards']() == 1 then
                press('<ESC>:call UltiSnips#JumpForwards()<CR>')
            elseif cmp.visible() then
                cmp.select_next_item({
                    behavior = cmp.SelectBehavior.Select
                    })
            elseif has_any_words_before() then
                press('<Tab>')
            else
                fallback()
            end
        end, {'i', 's',}),
        -- ['<Tab>'] = cmp.mapping.select_next_item({
        --     behavior = cmp.SelectBehavior.Select
        -- }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Select
        }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    sources = cmp.config.sources({
        { name = 'ultisnips', max_item_count = 3},
        { name = 'nvim_lsp', max_item_count = 10},
        { name = 'buffer', max_item_count = 10, keyword_length = 2},
        { name = 'path', max_item_count = 10},
    }),
    experimental = {
        native_menu = false,
        ghost_text = false
    },
    documentation = false,
    formatting = {
        deprecated = true, -- Show deprecated items
		fields = { 'abbr', 'kind', 'menu' }, -- Organise the layout of the menu
		format = function(entry, vim_item)
			vim_item.kind = symbol_map[vim_item.kind]
			local name = entry.source.name
			local completion = entry.completion_item.data
			local menu = ({
                nvim_ultisnips = '[SNP]',
				nvim_lsp = '[LSP]',
				buffer = '[Buf]',
				path = '[Path]',
			})[name]
			vim_item.menu = menu
			return vim_item
		end,
	},
    snippet = {
        expand = function(args)
            vim.fn['UltiSnips#Anon'](args.body)
        end,
    },
    completion = {
        get_trigger_characters = function(trigger_characters)
            if vim.bo.filetype == 'r' or vim.bo.filetype == 'rmd' then
                table.insert(trigger_characters, '$')
            end
            return trigger_characters
        end,
    },
})

-- cmp.setup.cmdline('/', {
--     sources = {
--         { name = 'buffer' }
--     },
--     mapping = {
--         ['<CR>'] = cmp.mapping.confirm({
--             behavior = cmp.ConfirmBehavior.Replace,
--             select = true,
--         }),
--         ['<Tab>'] = cmp.mapping.select_next_item({
--             behavior = cmp.SelectBehavior.Select
--         }),
--         ['<S-Tab>'] = cmp.mapping.select_prev_item({
--             behavior = cmp.SelectBehavior.Select
--         }),

    -- }
-- })
-- cmp.setup.cmdline(':', {
    -- sources = cmp.config.sources({
    --     { name = 'path' },
    --     { name = 'cmdline' }
    -- }),
    -- mapping = {
    --     ['<CR>'] = cmp.mapping.confirm({
    --         behavior = cmp.ConfirmBehavior.Replace,
    --         select = true,
    --     }),
    --     ['<Tab>'] = cmp.mapping.select_next_item({
    --         behavior = cmp.SelectBehavior.Select
    --     }),
    --     ['<S-Tab>'] = cmp.mapping.select_prev_item({
    --         behavior = cmp.SelectBehavior.Select
    --     }),
    -- }
-- })

