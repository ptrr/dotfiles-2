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
  Plug 'protesilaos/prot16-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'qpkorr/vim-renamer'
  Plug 'junegunn/goyo.vim'

call plug#end()

" General
" ------------------------------------------------
set encoding=utf-8
set errorbells
set visualbell
set autoread

set updatetime=500
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

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Tabs
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Searches
set hlsearch
set incsearch

" Splits
set wmw=0
set wmh=0
set splitbelow splitright

" Key bindings
" -----------------------------------------------
let mapleader=","

" Unmap arrows - learn Vim!
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Visual block remap
nmap <leader>vb <C-V>

" File actions
nmap <leader>w :w!<cr>
nmap <leader>wa :wa!<cr>
nmap <leader>x :x!<cr>
nmap <leader>xa :xa!<cr>
nmap <leader>q :q!<cr>
nmap <leader>qa :qa!<cr>

" Remap escape for insert mode
inoremap jk <Esc>

" Navigate vsplits
nmap <silent> <leader>l <c-w>l
nmap <silent> <leader>h <c-w>h

" Navigate and maximise splits
nmap <silent> <leader>j <C-W>j<C-W>_
nmap <silent> <leader>k <C-W>k<C-W>_

" Manage tabs
nmap <S-T> :tabnew<cr>
nmap <S-D> :tabclose<cr>
nmap <S-H> gT
nmap <S-L> gt

" Move lines
noremap <silent> <S-J> :m +1<CR>
noremap <silent> <S-K> :m -2<CR>

" Clear the search highlight
nmap <silent> \ :silent nohlsearch<CR>

" Toggle letter casing
" Inverting case of character with ~
nmap <leader>uu guu
nmap <leader>UU gUU

" Quick jump to last modification
nmap <leader>` `.
nmap <leader>' '.

" Toggle spell check
nmap <silent> <leader>sp :set spell!<CR>

" Word Count
nmap <leader>wc g<C-g>

" Visually select the text that was last edited/pasted
nmap <silent> <leader>v `[v`]

" Visual wrappings
:vmap [ "zdi[<C-R>z]<Esc>
:vmap ( "zdi(<C-R>z)<Esc>
:vmap { "zdi{<C-R>z}<Esc>
:vmap ` "zdi`<C-R>z`<Esc>
:vmap <leader>< "zdi<<C-R>z><Esc>

" resize splits
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

" Toggle Goyo
map <leader>go :Goyo<CR>

" Helpers
" ------------------------------------------------
" Paste mode avoids auto-indent
set pastetoggle=<leader>p

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Abbreviations
iab xdate <c-r>=strftime("%Y-%m-%d")<cr>
iab mesite https://protesilaos.com/
iab megithub https://github.com/protesilaos
iab megitlab https://gitlab.com/protesilaos
iab metwitter https://twitter.com/protstavrou

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

" Goyo
let g:goyo_width = 100
let g:goyo_height = '90%'

" Theme
set t_Co=256
syntax enable
colorscheme equinox_dark
