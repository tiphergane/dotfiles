set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" chargement des Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'mattn/emmet-vim'
Plugin 'mkitt/tabline.vim'
Plugin 'dense-analysis/ale'
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'voldikss/vim-floaterm'
Plugin 'craigemery/vim-autotag'
Plugin 'mitermayer/vim-prettier'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'nvie/vim-flake8'
Plugin 'psf/black'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'zxqfl/tabnine-vim'
Plugin 'frazrepo/vim-rainbow'

call vundle#end()            " required

colorscheme sublimemonokai
" mise en place des variables env
filetype on
filetype plugin indent on    " required
syntax on
set laststatus=2
set showtabline=2
set t_Co=256
set spelllang=fr,it,en_us
set relativenumber
set nu
set autoindent
set hlsearch
set incsearch
set cursorline
set cursorcolumn
set showmatch
set title
set autoread
set wildmenu
set wildmode=longest:full
set foldmethod=marker

" Mapping des touches
let mapleader = "\<space>"
let g:ale_fix_on_save = 1
let g:ale_linters = {
			\'python': ['flake8', 'isort', 'bandit', 'mypy'],
			\'markdown': ['alex', 'languagetool', 'markdownlint',
			\'mdl', 'proselint', 'redpen', 'remark_lint', 'textlint', 'vale', 'writegood'],
			\'vim': ['ale_custom_linting_rules', 'vimls', 'vint'],
			\'cs': ['csc', 'mcs', 'mcsc'],
			\'sh': ['shellcheck']
			\}
let g:ale_fixers = {
			\'*': ['remove_trailing_lines','trim_whitespace'],
			\'python': ['black', 'autopep8', 'yapf'],
			\'cs': ['uncrustify'],
			\'cpp':['uncrustify'],
			\'markdown': ['prettier','remark-lint'],
			\'sh': ['shfmt'],
			\'javascript': ['prettier'],
			\'css':['prettier']
			\}
let g:user_emmet_leader_key=','
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error                  = '✘'
let g:ale_sign_warning                = '⚠'
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_black_executable = 'python3'
let g:ale_python_black_options = '-m black'
let g:ale_python_autopep8_executable = 'python3'
let g:ale_python_autopep8_options = '-m autopep8'
let g:airline#extensions#ale#enabled = 1
let g:sublimemonokai_term_italic = 1
let g:uncrustify_bin_path = 'uncrustify'
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

map <silent> <up> :tab new<cr>
map <silent> <down> :tab close<cr>
map <silent> <left> :tabp<cr>
map <silent> <right> :tabn<cr>
map <silent> <f5> :set nospell!<cr>
map <silent> <c-o> :NERDTreeToggle<cr>
map <silent> <leader>sf :source %<cr>
map <silent> <leader>scf :w<cr>
map <silent> <leader>pi :PluginInstall<cr>
map <silent> <leader>pu :PluginUpdate<cr>
map <silent> <leader>pc :PluginClean<cr>
map <silent> <leader>ps :PluginSearch<cr>
map <silent> <leader>gg :GitGutterToggle<cr>
map <silent> <leader>ale :ALEToggle<cr>
map <silent> <leader>s" :<cr>ysw"<cr>
map <silent> <leader>s' :<cr>ysw'<cr>
map <silent> <leader>s( :<cr>ysw(<cr>
map <silent> <leader>s[ :<cr>ysw[<cr>
map <silent> <leader>tm :FloatermToggle<CR>
map <silent> <C-e> <Plug>(ale_next_wrap)
map <silent> <C-i> <Plug>(ale_previous_wrap)
