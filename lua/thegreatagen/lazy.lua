local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- lazy.nvim plugin ( the package manager )
    "folke/which-key.nvim",
    { "folke/neoconf.nvim",              cmd = "Neoconf" },
    "folke/neodev.nvim",
    { 'nvim-treesitter/nvim-treesitter', name = 'tree-sitter' },
    -- nvim tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    -- theme ( catppuccin )
    {
        -- Catppuccin theme
        'catppuccin/nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
        end,
    },
    -- mason
    {
        "williamboman/mason.nvim"
    },

    -- lsps
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },

        }
    },

    -- comments.nvim
    {
        'numToStr/Comment.nvim',
        opts = require('configs.comment'),
        config = function()
            require('Comment').setup()
        end,
    },

    -- presence
    { "andweeb/presence.nvim" },
    -- ibl
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    -- autoclose
    { "m4xshen/autoclose.nvim" },
    -- -- Harpoon
    { "nvim-lua/plenary.nvim" },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { { "nvim-lua/plenary.nvim" } }
    },
    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- lualine
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = require('configs.lualine')
    },
    -- codeium AI
    {
        'Exafunction/codeium.vim',
        config = function()
            -- Change '<C-g>' here to any keycode you like.
            vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
            vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
            vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
            vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
        end
    },

    -- alpha
    {
        'goolord/alpha-nvim',
    },

    -- trouble
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- persistence
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
        opts = {
            -- add any custom options here
        }
    },

    -- nvim-ts-autotag
    { "windwp/nvim-ts-autotag" },

    -- todo-comments
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- barbar
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    { "tribela/vim-transparent", config = function() vim.g.transparent_enabled = true end },
    {"wuelnerdotexe/vim-astro", config = function() vim.g.astro_typescript = true end},
}

require("lazy").setup(plugins, {})
