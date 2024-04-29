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
    'nvim-lua/plenary.nvim',  --needed for other plugins 

    -- Functionality
    'windwp/nvim-autopairs', -- for completing brackets and parenthesis
    'windwp/nvim-ts-autotag', -- for completing tags in HTML and JSX
    'numToStr/Comment.nvim', -- for commenting
    'christoomey/vim-tmux-navigator', -- tmux & split window navigation
    'gelguy/wilder.nvim', -- normal mode command autocompletion
    'tpope/vim-fugitive', -- Git integration
    'lervag/vimtex', -- Allow for VIM integration with LaTeX

    'sainnhe/sonokai', -- colorscheme
    'nvim-tree/nvim-web-devicons', -- File selector icons
    'folke/trouble.nvim', -- Shows error messages
    'lewis6991/gitsigns.nvim', -- Shows git side bars
    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim', -- For toggling diagnostics
    'nvim-lualine/lualine.nvim',
    'RRethy/vim-illuminate', -- highlights variables with the same names when hovered
    {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }, -- Allows you to hop between strings in a buffer

    -- Navigation
    {
      'DaikyXendo/nvim-tree.lua',
      dependencies = { "DaikyXendo/nvim-material-icon" }
    },
    {
      'nvim-telescope/telescope.nvim',
      branch = "0.1.x"  -- Telescope
    },
    {
     'nvim-treesitter/nvim-treesitter',
    },
    {
      'akinsho/bufferline.nvim',
      tag = "v3.*",
      dependencies = "nvim-tree/nvim-web-devicons"
    },

    {
      'VonHeikemen/lsp-zero.nvim',
      dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },

        -- Snippets
        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
      },
    },
  }

local opts = {}
require("lazy").setup(plugins, opts)
