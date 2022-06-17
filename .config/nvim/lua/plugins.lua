packer = require 'packer'
packer.init {
  opt_default = false,
  display = {
    open_fn = require('packer.util').float,
    working_sym = 'x',
    error_sym = 'x',
    done_sym = 'x',
    removed_sym = 'x',
    moved_sym = 'x',
    header_sym = 'x',
    show_all_info = true,
  } }

local use = packer.use
packer.reset()

packer.startup(function()

  use { 'wbthomason/packer.nvim' }
  use { 'neovim/nvim-lspconfig' }
  use { 'NvChad/nvim-colorizer.lua' }
    require('colorizer').setup()
  use { 'whatyouhide/vim-gotham', opt = true }
  use { 'rainbowhxch/beacon.nvim' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'L3MON4D3/LuaSnip' }

end)
