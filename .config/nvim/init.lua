--------------------------------------------------------------
--                                                          --
--     ▄████████████▄   ██████   █    █   ████▙   █████     --
--     ██ ▄▄ ██ ▄▄ ██   █    █   █    █   █   █   █         --
--     ██ ██ ██ ██ ██   █    █   █    █   █▒▒▒█   █▒▒       --
--     ██ ██ ██ ██ ██   █   ▒█▒  █    █   █████▙  ███       --
--     ██ ██ ██ ██ ██   █   ███  █    █   █    █  █         --
--     ██▂▂▂▂██▂▂▂▂██   █▒▒▒▒█   █▒▒▒▒█   █▒▒▒▒█  █▒▒▒▒     --
--     ▀████████████▀   ██████   ██████   █████▛  █████     --
--                                                          --
--------------------------------------------------------------

--VIMSCRIPT---------------------------------------------------
vim.cmd [[ 
  
  set termguicolors
  colorscheme gotham
  autocmd InsertEnter,InsertLeave * set cul! cuc!
  hi CursorLine term=bold cterm=bold guibg=Grey9
  hi CursorColumn term=bold cterm=bold guibg=Grey9

]]

--PLUGINS-----------------------------------------------------
require('plugins')
require('colorizer').setup()

--SETTINGS----------------------------------------------------
local set = vim.opt
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.ignorecase = true
set.hidden = true
set.hlsearch = true
set.incsearch = true
set.lazyredraw = true
set.magic = true
set.showmatch = true
set.background = dark
set.number = true
set.relativenumber = true

--KEYBINDS----------------------------------------------------
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w',   ':w!<CR>')
vim.keymap.set('n', '<leader>x',   ':wq!<CR>')
vim.keymap.set('n', '<leader>q',   ':q!<CR>')

vim.keymap.set('n', 'n',           '<Left>')
vim.keymap.set('n', 'e',           '<Up>')
vim.keymap.set('n', 'i',           '<Down>')
vim.keymap.set('n', 'o',           '<Right>')

vim.keymap.set('n', '<leader>t',   ':tabnew<CR>')
vim.keymap.set('n', '<leader>d',   ':tabclose<CR>')
vim.keymap.set('n', '<C-Left>',    ':tabp<CR>')
vim.keymap.set('n', '<C-Right>',   ':tabn<CR>')

vim.keymap.set('n', ',',           '<insert>')
vim.keymap.set('n', 'z',           '<Home>')
vim.keymap.set('n', '<S-z>',       '<End>')
vim.keymap.set('v', 'z',           '<Home>')
vim.keymap.set('v', '<S-z>',       '<End><Left>')
vim.keymap.set('n', 'l',           '<C-r>')
vim.keymap.set('n', '<C-a>',           '<Home>ggvG<End>')
vim.keymap.set('n', '*',           '*zz')

vim.keymap.set('i', '<C-BS>',      '<C-W>')
vim.keymap.set('i', '(',           '()<Left>')
vim.keymap.set('i', '{',           '{}<Left>')
vim.keymap.set('i', '[',           '[]<Left>')
vim.keymap.set('i', '"',           '""<Left>')
vim.keymap.set('i', "'",           "''<Left>")
vim.keymap.set('i', '<',           '<><Left>')
vim.keymap.set('i', '<C-y>',       '<Up>')
vim.keymap.set('i', '<C-e>',       '<Down>')

--LSP---------------------------------------------------------
--/home/qube/.config/nvim/lsp.lua
