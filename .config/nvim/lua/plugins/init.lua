local functions = vim.fn
local install_path = functions.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
if functions.empty(functions.glob(install_path)) > 0 then
    functions.system({
        'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git',
        install_path
    })
end

require 'paq' {
    {'SirVer/ultisnips'};
    {'christoomey/vim-tmux-navigator'};
    {'famiu/feline.nvim', run = require 'plugins.configs.feline'};
    {'fladson/vim-kitty'};
    {'folke/trouble.nvim', run = require 'plugins.configs.trouble'};
    {'hrsh7th/nvim-cmp', event = 'InsertEnter', run = require 'plugins.configs.completion'};
    {'hrsh7th/cmp-buffer', after = 'nvim-cmp'};
    {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'};
    {'hrsh7th/cmp-path', after = 'nvim-cmp'};
    {'quangnguyen30192/cmp-nvim-ultisnips', after = 'nvim-cmp'};
    {'jpalardy/vim-slime', run = vim.cmd 'source ~/.config/nvim/lua/plugins/configs/slime.vim'};
    {'junegunn/fzf', run = './install --bin'};
    {'junegunn/fzf.vim', run = require 'plugins.configs.fzf'};
    {'kyazdani42/nvim-web-devicons'};
    {'lervag/vimtex', run = vim.cmd 'source ~/.config/nvim/lua/plugins/configs/vimtex.vim'};
    {'lukas-reineke/indent-blankline.nvim', run = require 'plugins.configs.indent-blankline'};
    {'neovim/nvim-lspconfig', run = require 'plugins.configs.lsp'};
    {'nvim-treesitter/nvim-treesitter', run = require 'plugins.configs.treesitter' };
    {'nvim-treesitter/playground'};
    {'shaunsingh/nord.nvim', run = vim.cmd 'autocmd VimEnter * source ~/.config/nvim/vim/nord.vim'};
    {'tmux-plugins/vim-tmux-focus-events'};
    {'tpope/vim-commentary'};
    {'windwp/nvim-autopairs', run = require 'plugins.configs.autopairs'};
    {'tpope/vim-dadbod'};
    {'kristijanhusak/vim-dadbod-ui'};
    -- {'ful1e5/onedark.nvim', run = vim.cmd 'autocmd VimEnter * source ~/.config/nvim/vim/onedark.vim'};
}
