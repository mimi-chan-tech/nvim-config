set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

" enable clipboard
set clipboard=unnamedplus

set number
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest

set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

syntax enable

" unable arrow key
" if you're really vimmer, you must do this
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" undo & redo
" nnoremap u u
nnoremap U <c-r>

" visual mode
" nnoremap v v
" nnoremap V V
vnoremap v <c-v>

nmap <Esc><Esc> :nohlsearch<CR><Esc>


if has('persistent_undo')
  let undo_path=expand('~/.nvim/undo')
  exe 'set undodir=' .. undo_path
  set undofile
endif

" plugin config
if has('nvim')
  packadd vim-jetpack
  call jetpack#begin()
    Jetpack 'tani/vim-jetpack', {'opt': 1} " bootstrap
    Jetpack 'arcticicestudio/nord-vim' " colorscheme nord-vim

    " vim-airline
    Jetpack 'vim-airline/vim-airline'
    Jetpack 'vim-airline/vim-airline-themes'
    Jetpack 'vim-airline/vim-devicons'

    Jetpack 'cohama/lexima.vim'
  call jetpack#end()

  colorscheme nord

  " airline theme config
  let g:airline#extensions#tabline#enabled=1
  let g:airline_powerline_fonts=1
endif

