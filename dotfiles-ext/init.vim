syntax on
set noswapfile
set modeline
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4
set expandtab
set fileformat=unix
set foldmethod=indent
set nofoldenable
set number relativenumber
set diffopt+=vertical
filetype plugin indent on
set showtabline=2
set laststatus=2
set wildmenu
set complete+=kspell
set completeopt=menuone,longest

noremap <leader>\t :FloatermNew --height=0.6 --width=0.9<CR>
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/voldikss/vim-floaterm' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
set encoding=UTF-8

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


:map <C-n> :NERDTree

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
"  " :PlugClean :PlugInstall :UpdateRemotePlugins
"  "
"  " :CocInstall coc-python
"  " :CocInstall coc-clangd
"  " :CocInstall coc-snippets
"  " :CocCommand snippets.edit... FOR EACH FILE TYPE
"
"  " air-line
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
      endif

"      " airline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''

      inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
