packer = require 'packer'
packer.init {
  opt_default = true,
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

  use { 'wbthomason/packer.nvim', opt = false }
  use { 'NvChad/nvim-colorizer.lua', opt = false }
  --use { 'feline-nvim/feline.nvim', opt = true }
  use 'whatyouhide/vim-gotham'
  --use { 'kyazdani42/nvim-tree.lua', opt = false, requires = 
  --      { 'kyazdani42/nvim-web-devicons', } }
end)

