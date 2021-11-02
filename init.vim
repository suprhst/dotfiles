set encoding=utf-8
set number relativenumber
syntax enable
set wildmenu
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set termguicolors
call plug#begin()
Plug 'overcache/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }




call plug#end()


nmap <C-n> :NERDTreeToggle<CR>

let g:deoplete#enable_at_startup = 1

let g:neomake_python_enabled_makers = ['pylint']

call neomake#configure#automake('nrwi', 500)

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"





