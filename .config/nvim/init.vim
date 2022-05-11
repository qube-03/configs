"__________________________________________________________"
"                                                          "
"     ▄████████████▄   ██████   █    █   ████▙   █████     "
"     ██ ▄▄ ██ ▄▄ ██   █    █   █    █   █   █   █         "
"     ██ ██ ██ ██ ██   █    █   █    █   █▒▒▒█   █▒▒       "
"     ██ ██ ██ ██ ██   █   ▒█▒  █    █   █████▙  ███       "
"     ██ ██ ██ ██ ██   █   ███  █    █   █    █  █         "
"     ██▂▂▂▂██▂▂▂▂██   █▒▒▒▒█   █▒▒▒▒█   █▒▒▒▒█  █▒▒▒▒     "
"     ▀████████████▀   ██████   ██████   █████▛  █████     "
"                                                          "
"__________________________________________________________"

"----------------------------------------------------------Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'norcalli/nvim-colorizer.lua'
Plug 'itchyny/lightline.vim'
Plug 'andweeb/presence.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'lukas-reineke/indent-blankline.nvim'

"LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'

"Themes
Plug 'whatyouhide/vim-gotham'


call plug#end()



"----------------------------------------------------------Plugin Settings
:set termguicolors
lua require'colorizer'.setup()
let g:lightline = {'colorscheme': 'gotham256',}

let g:fff#split = "30vnew"



"----------------------------------------------------------Keybinds
let mapleader = " "
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>x :wq!<CR>

nnoremap n <Left>
nnoremap e <Up>
nnoremap i <Down>
nnoremap o <Right>
nnoremap <leader><Up> <PageUp><CR>
nnoremap <leader><Down> <PageDown><CR>
nnoremap f :NvimTreeFindFile<CR>
nnoremap <leader>b :new<CR>
nnoremap <leader>v :vnew<CR>
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

nnoremap , <insert>
nnoremap z <Home>
vnoremap z <Home>
nnoremap <S-z> <End>
vnoremap <S-z> <End>
nnoremap l <C-r>

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>
inoremap <expr> <CR>
    \ getline('.')[col('.')-1]=='}'
    \ ? "<Left>\<CR>\<Right>\ \ \<Left>" : "\<CR>"


"----------------------------------------------------------Settings
:set expandtab
:set tabstop =2
:set smarttab
:set ignorecase
:set hidden
:set smartcase
:set hlsearch
:set incsearch
:set lazyredraw
:set magic
:set showmatch
:set nobackup
:set background=dark
:set shiftwidth =2
:set number relativenumber
:filetype plugin on
:syntax enable
:set termguicolors
:set encoding=UTF-8



"----------------------------------------------------------Colorscheme
:colorscheme gotham256



"----------------------------------------------------------UI Options
:set guicursor+=n-v:blinkon0
:autocmd InsertEnter,InsertLeave * set cul! cuc!
:hi CursorLine term=bold cterm=bold guibg=Grey9
:hi CursorColumn term=bold cterm=bold guibg=Grey9
:set mouse=i
:set guifont=Terminus:h18
:map <ScrollWheelUp> <C-Y>
:map <ScrollWheelDown> <C-E>



"----------------------------------------------------------NvimTree
:lua require'nvim-tree'.setup()

let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {   
    \   'unstaged': "",
    \   'staged': "",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",   } }



"----------------------------------------------------------LSP
":luafile /home/qube/.config/nvim/lsp.lua
