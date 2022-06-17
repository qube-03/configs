vim.cmd [[ 
  
  set termguicolors
  colorscheme gotham
  autocmd InsertEnter,InsertLeave * set cul! cuc!
  hi CursorLine term=bold cterm=bold guibg=Grey9
  hi CursorColumn term=bold cterm=bold guibg=Grey9

]]
