"Chargement des plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
"Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'crusoexia/vim-monokai'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
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
Plug 'rkitover/vimpager'
Plug 'ycm-core/YouCompleteMe'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
call plug#end()
"}}}
"Mise en place des set {{{
syntax on
set laststatus=2
set showtabline=2
set termguicolors
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
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
set termguicolors
filetype on
filetype plugin indent on
syntax on
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
let g:ale_lint_on_save = 1
let g:ale_linters = {
			\'python': ['flake8', 'isort', 'bandit', 'mypy'],
			\'markdown': ['alex', 'languagetool', 'markdownlint',
			\'mdl', 'proselint', 'redpen', 'remark_lint', 'textlint', 'vale', 'writegood'],
			\'vim': ['ale_custom_linting_rules', 'vimls', 'vint'],
			\'cs': ['csc', 'mcs', 'mcsc'],
			\'json': ['jq', 'jsonlint', 'spectral'],
			\'sh': ['shellcheck'],
			\'php': ['intelephense', 'langserver', 'phan', 'php', 'phpcs', 'phpmd', 'phpstan', 'psalm', 'tlint'],
			\'S': 'all'
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
let g:ale_completion_symbols = {
    \ 'text': '',
    \ 'method': '',
    \ 'function': '',
    \ 'constructor': '',
    \ 'field': '',
    \ 'variable': '',
    \ 'class': '',
    \ 'interface': '',
    \ 'module': '',
    \ 'property': '',
    \ 'unit': 'v',
    \ 'value': 'v',
    \ 'enum': 't',
    \ 'keyword': 'v',
    \ 'snippet': 'v',
    \ 'color': 'v',
    \ 'file': 'v',
    \ 'reference': 'v',
    \ 'folder': 'v',
    \ 'enum_member': 'm',
    \ 'constant': 'm',
    \ 'struct': 't',
    \ 'event': 'v',
    \ 'operator': 'f',
    \ 'type_parameter': 'p',
    \ '<default>': 'v'
    \ }
let g:user_emmet_leader_key=','
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 0
let g:ale_fix_on_text_changed = 0
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_black_executable = 'python3'
let g:ale_python_black_options = '-m black'
let g:ale_python_autopep8_executable = 'python3'
let g:ale_python_autopep8_options = '-m autopep8'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#vimcmake#enabled = 1
let g:sublimemonokai_term_italic = 0
let g:sublimemonokai_gui_italic = 0
let g:uncrustify_bin_path = 'uncrustify'
let g:rainbow_active = 1
"let g:airline_left_sep = ">"
"let g:airline_right_sep = "<"
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']]],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>'],['<\h[^>]*>','</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
" Configuration de markdow-preview
" set to 1, nvim will open the preview window after entering the markdown
buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
"mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview
" page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of
" the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default:
" v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1,
			\ 'sequence_diagrams': {},
			\ 'flowchart_diagrams': {},
			\ 'content_editable': v:false,
			\ 'disable_filename': 0
			\ }

" use a custom markdown
"style must be absolute path
" like
"'/Users/username/markdown.css'
"or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight
"style must absolute path
" like
"'/Users/username/highlight.css'
"or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start
"server or random for empty
let g:mkdp_port = ''

" preview page title
"${name} will be replace with the file name
let g:mkdp_page_title = '${name}'

" recognized filetypes
"these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
" "
" "
" "
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
map <silent> <leader>mp :MarkdownPreviewToggle<cr>
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
map <silent> <leader>mp <Plug>MarkdownPreviewToggle<cr>
map <silent> <leader><leader> :<cr>zA<cr>
vnoremap <leader><Tab> <Esc>
nnoremap <leader><Tab> <Esc>
inoremap <leader><Tab> <Esc>
nmap <leader>gt :diffget //3<CR>
nmap <leader>ge :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
autocmd BufWriteCmd,BufRead *.json :%!python3 -m json.tool
"}}}
