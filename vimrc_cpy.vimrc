set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
call vundle#begin()
set t_co=256

set cursorline

set tabstop=4
set softtabstop=4
set expandtab

set number

set wildmenu
set lazyredraw

set incsearch
set hlsearch

set updatetime=100

"movement
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]


let mapleader=","
" inoremap jk <esc>

" Split Configurations
map <leader>w <C-W>w

" CtrlP Configurations
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden'
nnoremap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NerdTREE shortcuts t-toggles, f-focuses (maybe delete?)
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFocus<cr>

" Cursor block when in NORMAL mode
" Cursor vertical bar when in INSERT mode
" SI (Start Index) | EI (Exit Index)
let &t_SI = "\<Esc>[5 q"
let &t_EI = "\<Esc>[0 q"

" Airline Configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" GitGutter Configurations
nnoremap <leader>gg :GitGutterToggle <bar> :GitGutterLineHighlightsEnable<CR>


" Let Vundle manage itself.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'

" Color Schemes
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
colorscheme onehalflight


" Require, plugins available after.
call vundle#end()
filetype plugin indent on

syntax on


