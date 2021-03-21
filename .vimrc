
"Chargement des plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'git://git.wincent.com/command-t.git'
Plug 'mattn/emmet-vim'
Plug 'mkitt/tabline.vim'
Plug 'dense-analysis/ale'
Plug 'aserebryakov/vim-todo-lists'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm'
Plug 'craigemery/vim-autotag'
Plug 'mitermayer/vim-prettier'
Plug 'nvie/vim-flake8'
Plug 'psf/black'
Plug 'terryma/vim-multiple-cursors'
Plug 'codota/tabnine-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
call plug#end()
"}}}
"Mise en place des set {{{
syntax on
set laststatus=2
set showtabline=2
set termguicolors
set t_Co=256
set spelllang=fr,it,en_us
set relativenumber
set nu
set autoindent
set nohlsearch
set incsearch
set showmatch
set title
set autoread
set scrolloff=8
set colorcolumn=80
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hidden
set smartindent
set wildmenu
set wildmode=longest:full
set foldmethod=marker
filetype on
filetype plugin indent on
"}}}
"Colorscheme {{{
colorscheme sublimemonokai
"colorscheme gruvbox
"}}}
" Changement de la touche leader pour espace{{{
let mapleader = "\<space>"
"}}}
"Configuration d'ale et rainbow  {{{
let g:airline_powerline_font = 1
let g:ale_completion_delay = 10
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
			\'python': ['flake8', 'isort', 'bandit', 'mypy'],
			\'markdown': ['alex', 'languagetool', 'markdownlint',
			\'mdl', 'proselint', 'redpen', 'remark_lint', 'textlint', 'vale', 'writegood'],
			\'vim': ['ale_custom_linting_rules', 'vimls', 'vint'],
			\'cs': ['csc', 'mcs', 'mcsc'],
			\'json': ['jq', 'jsonlint', 'spectral'],
			\'sh': ['shellcheck'],
			\'php': ['intelephense', 'langserver', 'phan', 'php', 'phpcs', 'phpmd', 'phpstan', 'psalm', 'tlint']
			\}
let g:ale_fixers = {
			\'*': ['remove_trailing_lines','trim_whitespace'],
			\'python': ['black', 'autopep8', 'yapf'],
			\'cs': ['uncrustify'],
			\'c': ['uncrustify'],
			\'cpp':['uncrustify'],
			\'markdown': ['prettier','remark-lint'],
			\'json': ['fixjson','jq','prettier'],
			\'sh': ['shfmt'],
			\'javascript': ['prettier'],
			\'php': ['php_cs_fixer','phpcbf'],
			\'css':['prettier']
			\}
let g:user_emmet_leader_key=','
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_black_executable = 'python3'
let g:ale_python_black_options = '-m black'
let g:ale_python_autopep8_executable = 'python3'
let g:ale_python_autopep8_options = '-m autopep8'
let g:airline#extensions#ale#enabled = 1
let g:sublimemonokai_term_italic = 1
let g:sublimemonokai_gui_italic = 1
let g:uncrustify_bin_path = 'uncrustify'
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']]],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"}}}
"Mapping des touches {{{
map <silent> <up> :tab new<cr>
map <silent> <down> :tab close<cr>
map <silent> <left> :tabp<cr>
map <silent> <right> :tabn<cr>
map <silent> <f5> :set nospell!<cr>
map <silent> <c-o> :NERDTreeToggle<cr>
map <silent> <leader>sf :source %<cr>
map <silent> <leader>scf :w<cr>
map <silent> <leader>pi :PlugInstall<cr>
map <silent> <leader>pu :PlugUpdate<cr>
map <silent> <leader>pc :PlugClean<cr>
map <silent> <leader>ps :PlugStatus<cr>
map <silent> <leader>gg :GitGutterToggle<cr>
map <silent> <leader>ale :ALEToggle<cr>
map <silent> <leader>s" :<cr>ysw"<cr>
map <silent> <leader>s' :<cr>ysw'<cr>
map <silent> <leader>s( :<cr>ysw(<cr>
map <silent> <leader>s[ :<cr>ysw[<cr>
map <silent> <leader>tm :FloatermToggle<CR>
map <silent> <leader>fsb :Buffers<CR>
map <silent> <leader>fsf :Files<CR>
map <silent> <leader>fsl :Lines<CR>
map <silent> <C-e> <Plug>(ale_next_wrap)
map <silent> <C-i> <Plug>(ale_previous_wrap)
map <silent> <leader>ff :Files<cr>
map <silent> <leader><leader> :<cr>zA<cr>
vnoremap <leader><Tab> <Esc>
nnoremap <leader><Tab> <Esc>
inoremap <leader><Tab> <Esc>
"}}}
