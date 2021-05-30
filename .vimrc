syntax on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~./.vim/undodir
set undofile
set incsearch
set path+=**
set wildmenu
set wildignore+=**/node_mudoles/**

call plug#begin('~/.vim/plugged')

Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'glepnir/oceanic-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jremmen/vim-ripgrep'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'

call plug#end()

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

colorscheme gruvbox
