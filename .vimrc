" Plugins
" ------------------------------------------------
call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'dpelle/vim-LanguageTool'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ervandew/supertab'
  Plug 'jiangmiao/auto-pairs'
  Plug 'protesilaos/prot16-vim'
  Plug 'protesilaos/prot16-vim-airline'
  Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" General
" ------------------------------------------------
set encoding=utf-8
set errorbells
set visualbell

set updatetime=250
set undolevels=1000
set backspace=indent,eol,start

set showcmd
set wildmenu

"  Backups
set directory^=$HOME/vim-backups/ " put all swap files together in one place

" Lines
set number
set cursorline
set wrap
set ruler

set modifiable

" Behaviour
set showmatch
set textwidth=0
set nostartofline
set splitbelow splitright

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

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

" Remap escape for insert mode
inoremap jk <Esc>

" Navigate splits
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

" Clear the search highlight
map <silent> \ :silent nohlsearch<CR>

" Visually select the text that was last edited/pasted
map <leader>v `[v`]

" Toggle spell check
map <silent> <leader>sp :set spell!<CR>

" resize splits (http://vim.wikia.com/wiki/Resize_splits_more_quickly)
map <silent> <leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
map <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Toggle invisibles
nnoremap <leader>i :set list!<cr>

" Toggle Nerd Tree
map <leader>n :NERDTreeToggle<CR>

" Toggle Goyo
map <leader>go :Goyo<CR>

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

" Typography
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 10

let g:goyo_width = 85
let g:goyo_height = '100%'
let g:goyo_linenr = 0

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" CtrlP
" Ignore common directories
let g:ctrlp_custom_ignore = {
   \ 'dir': 'node_modules\|bower_components\|public\|_site',
   \ }

" Airline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#fugitive#enabled = 1
let g:airline_symbols_ascii = 1
let g:airline_theme='termina_dark'
set laststatus=2

" Theme
syntax enable
colorscheme termina_dark
