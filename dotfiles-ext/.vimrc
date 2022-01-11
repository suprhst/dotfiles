" General Conf
set number
set encoding=UTF-8
set hidden
filetype plugin on
filetype plugin indent on
set nocompatible
set wildmenu
syntax on
"set cursorline
set nowrap
set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed





" Plugins conf

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:SimpylFold_docstring_preview=1

noremap <leader>\t :below terminal<CR>

"Plugins

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'junegunn/fzf.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


" Key bindings
:map <C-n> :NERDTree
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
