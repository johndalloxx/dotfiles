-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'ocaml/merlin'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-lualine/lualine.nvim')
    use { "ellisonleao/gruvbox.nvim" }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("MunifTanjim/nui.nvim")
    use("rcarriga/nvim-notify")
    use("OXY2DEV/markview.nvim")
    use('nvim-treesitter/playground')
    use('nvim-tree/nvim-tree.lua')
    use('github/copilot.vim')
    use("kyazdani42/nvim-web-devicons")
    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
    use('christoomey/vim-tmux-navigator')
    use('theprimeagen/harpoon')
    use('jlcrochet/vim-razor')
    use('seblj/roslyn.nvim')
    use('mbbill/undotree')
    use({
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    })
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require('nvim-surround').setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    -- use('savq/melange-nvim')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip', requires = {
                { 'rafamadriz/friendly-snippets' },
                { 'saadparwaiz1/cmp_luasnip' }
            } },                                -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use { 'junegunn/fzf', hook = vim.fn['fzf#install'] }
    use('junegunn/fzf.vim')
end)
