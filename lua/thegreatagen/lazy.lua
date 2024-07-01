local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim";
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath
   });
end;
vim.opt.rtp:prepend(lazypath);
local theme = require("configs.theme");
local plugins = {
   "folke/which-key.nvim",
   {
      "folke/neoconf.nvim",
      cmd = "Neoconf"
   },
   "folke/neodev.nvim",
   {
      "nvim-treesitter/nvim-treesitter",
      name = "tree-sitter"
   },
   {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
         "nvim-tree/nvim-web-devicons"
      }
   },
   {
      "williamboman/mason.nvim"
   },
   {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v1.x",
      dependencies = {
         {
            "neovim/nvim-lspconfig"
         },
         {
            "williamboman/mason.nvim"
         },
         {
            "williamboman/mason-lspconfig.nvim"
         },
         {
            "hrsh7th/nvim-cmp"
         },
         {
            "hrsh7th/cmp-buffer"
         },
         {
            "hrsh7th/cmp-path"
         },
         {
            "hrsh7th/cmp-cmdline"
         },
         {
            "saadparwaiz1/cmp_luasnip"
         },
         {
            "hrsh7th/cmp-nvim-lsp"
         },
         {
            "hrsh7th/cmp-nvim-lua"
         },
         {
            "L3MON4D3/LuaSnip"
         },
         {
            "rafamadriz/friendly-snippets"
         }
      }
   },
   {
      "numToStr/Comment.nvim",
      opts = require("configs.comment"),
      config = function()
         (require("Comment")).setup();
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      opts = {}
   },
   {
      "m4xshen/autoclose.nvim"
   },
   -- Harpoon
   { "nvim-lua/plenary.nvim" },
   {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { { "nvim-lua/plenary.nvim" } }
   },
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
      dependencies = {
         "nvim-lua/plenary.nvim"
      }
   },
   {
      "nvim-lualine/lualine.nvim",
      opts = require("configs.lualine")
   },
   {
      "Exafunction/codeium.vim",
      config = function()
         vim.keymap.set("i", "<C-g>", function()
            return vim.fn["codeium#Accept"]();
         end, {
            expr = true
         });
         vim.keymap.set("i", "<c-;>", function()
            return vim.fn["codeium#CycleCompletions"](1);
         end, {
            expr = true
         });
         vim.keymap.set("i", "<c-,>", function()
            return vim.fn["codeium#CycleCompletions"](-1);
         end, {
            expr = true
         });
         vim.keymap.set("i", "<c-x>", function()
            return vim.fn["codeium#Clear"]();
         end, {
            expr = true
         });
      end
   },
   {
      "goolord/alpha-nvim"
   },
   {
      "folke/trouble.nvim",
      dependencies = {
         "nvim-tree/nvim-web-devicons"
      }
   },
   {
      "folke/persistence.nvim",
      event = "BufReadPre",
      opts = {}
   },
   {
      "windwp/nvim-ts-autotag"
   },
   {
      "folke/todo-comments.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim"
      },
      opts = {}
   },
   {
      "tribela/vim-transparent",
      config = function()
         vim.g.transparent_enabled = true;
      end
   },
   {
      "wuelnerdotexe/vim-astro",
      config = function()
         vim.g.astro_typescript = true;
      end
   },
   {
      'neoclide/coc.nvim',
      branch = 'release',
      config = function()
         require("configs.coc")
      end
   },
   { "mbbill/undotree" },
   {
      'barrett-ruth/live-server.nvim',
      build = 'npm install -g live-server',
      cmd = { 'LiveServerStart', 'LiveServerStop' },
      config = true
   },
   theme
};
(require("lazy")).setup(plugins, {});
