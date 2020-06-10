set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'mkitt/tabline.vim'
Plugin 'preservim/nerdtree'
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
colorscheme murphy
set laststatus=2
set relativenumber
set nu
set t_Co=256
set encoding=utf-8
syntax on
set ruler
filetype plugin indent on
set noerrorbells
set showmatch
set spell
set spelllang=fr,en_us,it
set complete+=kspell
set showtabline=2
set cursorline
set cursorcolumn
set hlsearch
set incsearch
set foldenable

let mapleader="\<space>"
map <F5> :set nospell! <CR>
" les nmap ne fonctionnent que dans le mode normal
nmap <left> :tabp <CR>
nmap <right> :tabn <CR>
nmap <up> :tab new <CR>
nmap <down> :tab close <CR>
let g:tablineclosebutton=1
map <C-o> :NERDTreeToggle <CR>
map <leader>sf :source % <CR>
map <leader>scf :w <CR>
map <leader>pi :PluginInstall<CR>
map <leader>pu :PluginUpdate<CR>
map <leader>pc :PluginClean<CR>
map <leader>gh :%!xxd<CR>
map <leader>rh :%!xxd -r<CR>
