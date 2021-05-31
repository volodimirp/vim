-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use {
    'kabouzeid/nvim-lspinstall',
    config = require('settings._lsp').config
  }
  use 'folke/lsp-colors.nvim'
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {}
    end
  }
  -- Code Action
  -- use 'kosayoda/nvim-lightbulb'

  -- Navigation
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    config = require('settings._telescope').config
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'fhill2/telescope-ultisnips.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('settings._treesitter').config
  }
  use { 'p00f/nvim-ts-rainbow', after = 'nvim-treesitter' }
  use { 'windwp/nvim-ts-autotag', opt = true }
  use 'andymass/vim-matchup'

  -- Colorschemes
  -- Lush is a colorscheme creation aid, written in Lua, for Neovim.
  -- use 'rktjmp/lush.nvim'
  -- use 'marko-cerovac/material.nvim'
  -- use 'rafamadriz/neon'
  -- use 'glepnir/zephyr-nvim'
  -- use 'folke/tokyonight.nvim'
  -- use 'Th3Whit3Wolf/one-nvim'
  -- use 'monsonjeremy/onedark.nvim'
  -- use {
  --   'dracula/vim',
  --   config = require('settings._theme').config
  -- }
  -- use {
  --   'drewtempelmeyer/palenight.vim',
  --   config = require('settings._theme').config
  -- }
  use {
    'flazz/vim-colorschemes',
    config = require('settings._theme').config
  }
  -- use {
  --   'rakr/vim-one',
  --   config = require('settings._theme').config
  -- }
  --[[ use {
    'windwp/wind-colors',
    config = require('settings._theme').config
  } ]]

  -- Icons
  -- use 'kyazdani42/nvim-web-devicons'
  -- use {
  --   'yamatsum/nvim-nonicons',
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- Symbol Outline
  use {
    'simrat39/symbols-outline.nvim'
  }
  -- Statusline
  use {
    'famiu/feline.nvim',
    config = require('settings._feline').config
  }

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = require('settings._dashboard').config
  }

  -- Buffer tabs
  -- use {
  --   'akinsho/nvim-bufferline.lua',
  --   config = require('settings._bufferline').config,
  --   requires = 'kyazdani42/nvim-web-devicons'
  -- }

  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    config = require('settings._tree').config
  }
  use 'kevinhwang91/rnvimr'
  use {
    'ahmedkhalf/lsp-rooter.nvim',
    config = function()
      require('lsp-rooter').setup()
    end
  }

  -- Markdown preview
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    ft = 'markdown'
  }

  use {
    'folke/todo-comments.nvim',
    event = 'BufRead',
    config = function()
      require('todo-comments').setup()
    end
  }

  -- Version Control
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = require('settings._git-signs').config
  }

  -- Color
  use {
    'norcalli/nvim-colorizer.lua',
    config = require('settings._nvim-colorizer').config
  }

  -- EasyMotion
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      require('hop').setup {}
    end
  }

  -- Other
  -- use {
  --   'sunjon/shade.nvim',
  --   config = function()
  --     require('shade').setup {}
  --   end
  -- }
  -- use 'gennaro-tedesco/nvim-commaround'
  use 'ludovicchabant/vim-gutentags'
  use 'moll/vim-bbye'
  use 'b3nj5m1n/kommentary'
  use {
    'karb94/neoscroll.nvim',
    config = require('settings._neoscroll').config
  }
  use 'kevinhwang91/nvim-bqf'
  use 'editorconfig/editorconfig-vim'
  use 'djoshea/vim-autoread'
  use 'yamatsum/nvim-cursorline'
  --[[ use {
    'itchyny/vim-cursorword',
    event = { 'BufReadPre','BufNewFile' },
    config = require('settings._vim-cursorword').config
  } ]]
  use {
    'lukas-reineke/format.nvim',
    config = require('settings._format').config
  }
  use {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup {}
    end
  }
  use {
    'rmagatti/auto-session',
    config = require('settings._auto-session').config
  }
  use {
    'folke/which-key.nvim',
    config = require('settings._which-key').config
  }

  -- diagnostic
  use {
    'dense-analysis/ale',
    config = require('settings._ale').config
  }
  use 'nathunsmitty/nvim-ale-diagnostic'
  use 'dstein64/vim-startuptime'

  -- Autocomplete
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use {
    'hrsh7th/nvim-compe',
    config = require('settings._nvim_compe').config
  }
  use {
    'windwp/nvim-autopairs',
    config = require('settings._nvim-autopairs').config
  }
  use { 'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe' }

  -- Move & Search & replace
  use {
    'windwp/nvim-spectre',
    config = require('settings._spectre').config
  }
  use {
    'nacro90/numb.nvim',
    config = require('settings._numb').config
  }
  use {
    'kevinhwang91/nvim-hlslens',
    config = require('settings._hlslens').config
  }

  -- use 'camspiers/animate.vim'
  -- use 'camspiers/lens.vim'

  -- -- Tim Pope docet
  -- use 'tpope/vim-sensible'
  use 'tpope/vim-rails'
  -- use 'tpope/vim-surround'
  use 'tpope/vim-bundler'
  -- use 'tpope/vim-capslock'
  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  -- use 'tpope/vim-fugitive'
end)
