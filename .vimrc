" Plugins
" ------------------------------------------------
call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'dpelle/vim-LanguageTool'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ervandew/supertab'
  Plug 'jiangmiao/auto-pairs'
  Plug 'protesilaos/prot16-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'sheerun/vim-polyglot'

call plug#end()

" General
" ------------------------------------------------
set encoding=utf-8
set errorbells
set visualbell
set autoread

set updatetime=250
set undolevels=1000

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set showcmd
set wildmenu

" Lines
set number
set relativenumber
set cursorline
set wrap
set ruler

set modifiable

" Behaviour
set showmatch
set textwidth=0
set nostartofline
set splitbelow splitright

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Tabs
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

" Searches
set hlsearch
set incsearch

" Key bindings
" -----------------------------------------------
let mapleader=","

" File actions
nmap <leader>w :w!<cr>
nmap <leader>wa :wa!<cr>
nmap <leader>x :x!<cr>
nmap <leader>xa :xa!<cr>
nmap <leader>q :q!<cr>
nmap <leader>qa :qa!<cr>

" Remap escape for insert mode
inoremap jk <Esc>

" Navigate splits
nmap <silent> <leader>j <C-W>j<C-W>_
nmap <silent> <leader>k <C-W>k<C-W>_
nmap <silent> <leader>h <c-w>h<c-w><bar>
nmap <silent> <leader>l <c-w>l<c-w><bar>
set wmw=0
set wmh=0

" Manage tabs
nmap <S-T> :tabnew<cr>
nmap <S-D> :tabclose<cr>
nmap <S-H> gT
nmap <S-L> gt

" Move lines
noremap <silent> <S-J> :m +1<CR>
noremap <silent> <S-K> :m -2<CR>

" Clear the search highlight
map <silent> \ :silent nohlsearch<CR>

" Visually select the text that was last edited/pasted
map <silent> <leader>v `[v`]

" Toggle spell check
map <silent> <leader>sp :set spell!<CR>

" resize splits (http://vim.wikia.com/wiki/Resize_splits_more_quickly)
map <silent> <leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
map <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Toggle invisibles
nnoremap <leader>i :set list!<cr>

" Toggle Nerd Tree
map <leader>n :NERDTreeToggle<CR>

" Invoke CtrlP
" ff is mnemonic for Fuzzy Finder.
nnoremap <leader>ff :CtrlP<cr>
nnoremap <leader>ft :CtrlPTag<cr>
nnoremap <leader>fb :CtrlPBuffer<cr>

" Helpers
" ------------------------------------------------
" Paste mode avoids auto-indent
set pastetoggle=<leader>p

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Abbreviations
iab xdate <c-r>=strftime("%Y-%m-%d")<cr>

" Plugin settings
" ------------------------------------------------
" Nerd Commenter
filetype plugin indent on
let NERDSpaceDelims = 1

" Nerd Tree
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP
" Ignore common directories
let g:ctrlp_custom_ignore = {
   \ 'dir': 'node_modules\|bower_components\|public\|_site\|vendor',
   \ }

" Easy motion
" ew is mnemonic for `easy word`
map  <Leader>ew <Plug>(easymotion-bd-w)
nmap <Leader>ew <Plug>(easymotion-overwin-w)

" Theme
syntax enable
colorscheme hinterland_dark
