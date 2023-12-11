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

" terminal mode config
autocmd TermOpen * :startinsert
autocmd TermOpen * setlocal nonumber norelativenumber

tnoremap <ESC> exit<CR>
tnoremap <c-W>n       :new<CR>
tnoremap <c-W><c-N>   :new<CR>
tnoremap <c-W>q       :quit<CR>
tnoremap <c-W><c-Q>   :quit<CR>
tnoremap <c-W>c       :close<CR>
tnoremap <c-W>o       :only<CR>
tnoremap <c-W><c-O>   :only<CR>
tnoremap <c-W><Down>  :wincmd j<CR>
tnoremap <c-W><c-J>   :wincmd j<CR>
tnoremap <c-W>j       :wincmd j<CR>
tnoremap <c-W><Up>    :wincmd k<CR>
tnoremap <c-W><c-K>   :wincmd k<CR>
tnoremap <c-W>k       :wincmd k<CR>
tnoremap <c-W><Left>  :wincmd h<CR>
tnoremap <c-W><c-H>   :wincmd h<CR>
tnoremap <c-W><BS>    :wincmd h<CR>
tnoremap <c-W>h       :wincmd h<CR>
tnoremap <c-W><Right> :wincmd l<CR>
tnoremap <c-W><c-L>   :wincmd l<CR>
tnoremap <c-W>l       :wincmd l<CR>
tnoremap <c-W>w       :wincmd w<CR>
tnoremap <c-W><c-W>   :wincmd w<CR>
tnoremap <c-W>W       :wincmd W<CR>
tnoremap <c-W>t       :wincmd t<CR>
tnoremap <c-W><c-T>   :wincmd t<CR>
tnoremap <c-W>b       :wincmd b<CR>
tnoremap <c-W><c-B>   :wincmd b<CR>
tnoremap <c-W>p       :wincmd p<CR>
tnoremap <c-W><c-P>   :wincmd p<CR>
tnoremap <c-W>P       :wincmd P<CR>
tnoremap <c-W>r       :wincmd r<CR>
tnoremap <c-W><c-R>   :wincmd r<CR>
tnoremap <c-W>R       :wincmd R<CR>
tnoremap <c-W>x       :wincmd x<CR>
tnoremap <c-W><c-X>   :wincmd x<CR>
tnoremap <c-W>K       :wincmd K<CR>
tnoremap <c-W>J       :wincmd J<CR>
tnoremap <c-W>H       :wincmd H<CR>
tnoremap <c-W>L       :wincmd L<CR>
tnoremap <c-W>T       :wincmd T<CR>
tnoremap <c-W>=       :wincmd =<CR>
tnoremap <c-W>-       :wincmd -<CR>
tnoremap <c-W>+       :wincmd +<CR>
tnoremap <c-W>z       :pclose<CR>
tnoremap <c-W><c-Z>   :pclose<CR>

" syntax highlight
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

" Double Esc to turn off search highlight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" window keymap
" open and close window
nnoremap wn <c-w>v<CR>
nnoremap wN <c-w>s<CR>
nnoremap wm :q<CR>
nnoremap wM :bd<CR>

" move window
nnoremap wh <c-w>h
nnoremap wj <c-w>j
nnoremap wk <c-w>k
nnoremap wl <c-w>l

" tab keymap
" open and close tab
nnoremap tn :tabnew<CR>
nnoremap tk :tabnew<CR>
nnoremap tj :bd<CR>
nnoremap tm :tabclose<CR>
nnoremap tM :bw<CR>

" move tab
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>

" terminal mode
nnoremap tt :terminal<CR>
nnoremap tx :belowright new<CR>:terminal<CR>

" undo files config
if has('persistent_undo')
  let undo_path=expand('~/.nvim/undo')
  exe 'set undodir=' .. undo_path
  set undofile
endif

" plugin config
if has('nvim')
  packadd vim-jetpack
  call jetpack#begin()
    " bootstrap
    Jetpack 'tani/vim-jetpack', {'opt': 1}

    " colorschme nord-vim
    Jetpack 'arcticicestudio/nord-vim' 

    " vim-airline
    Jetpack 'vim-airline/vim-airline'
    Jetpack 'vim-airline/vim-airline-themes'
    Jetpack 'vim-airline/vim-devicons'

    " autocomplete brackets
    Jetpack 'cohama/lexima.vim'
    
    " copilot
    Jetpack 'github/copilot.vim'

    " markdown
    Jetpack 'previm/previm'
    Jetpack 'mattn/vim-maketable'

    " file tree
    Jetpack 'scrooloose/nerdtree'

    " fzf
    Jetpack 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Jetpack 'junegunn/fzf.vim'
  call jetpack#end()

  " set colorscheme
  colorscheme nord

  " airline theme config
  let g:airline#extensions#tabline#enabled=1
  let g:airline_powerline_fonts=1

  nnoremap <silent><F2> :NERDTreeToggle<CR>
endif

