" NeoVim config file 
" Synchon Mandal
" Updated June 2020

" Set Python path
let g:python_host_prog='/Users/Synchon/miniconda3/bin//python'

" Plugins:
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'sCRooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Config:
filetype plugin indent on
syntax on " enables file type support
set number " show line numbers
set relativenumber " show relative line numbers
set incsearch " search in real-time
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
if (has('nvim'))
    set inccommand=nosplit
endif
set shell=/usr/local/bin/fish

" Bindings:
:nnoremap <Space> i<Space><Right><ESC>
:nnoremap <Backspace> i<Backspace><Right><ESC>
:nmap <leader>bd :bdelete<CR>

" Theme:
syntax enable
colorscheme OceanicNext 

" Airline:
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_close_button = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" NERDTree:
" toggle
map <silent> <Leader><Leader> :NERDTreeToggle<CR>
" quit on file open
let NERDTreeQuitOnOpen = 1
" delete buffer of file deleted with NERDTree
let NERDTreeAutoDeleteBuffer = 1
" UI enhancement
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Neomake:
" when writing a buffer
call neomake#configure#automake('w')
" when writing a buffer, and on normal mode changes (after 750ms)
call neomake#configure#automake('nw', 750)
" when reading a buffer (after 1s), and when writing
call neomake#configure#automake('rw', 1000)

" Use deoplete
let g:deoplete#enable_at_startup = 1

" CtrlP bindings:
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

let g:ctrlp_working_path_mode = 'r' " use nearest .git as cwd"

" bind to use leader
nmap <leader>p :CtrlP<CR>
" Bindings for CtrlP modes
nmap <leader>bb :CtrlPBuffer<CR>
nmap <leader>bm :CtrlPMixed<CR>
nmap <leader>bs :CtrlPMRU<CR>
