-- définition des variables locale
local opt=vim.opt
local nset=vim.api.nvim_set_option_value

-- set des options
opt.laststatus=2
opt.showtabline=2
opt.termguicolors=true
opt.relativenumber=true
opt.number=true
opt.hlsearch=false
opt.incsearch=true
opt.ignorecase = true
opt.smartcase = true
opt.showmatch=true
opt.scrolloff=8
opt.title=true
opt.autoread=true
opt.undofile=true
opt.hidden=true
opt.smartindent=true
opt.cursorline =true
opt.encoding="UTF-8"
opt.mouse=
opt.clipboard:append("unnamedplus")
opt.colorcolumn="80"
opt.syntax="on"

nset("wildmode","longest:full",{})
nset("foldmethod","marker",{})

-- chargement des fichiers de conf lua (.config/nvim/lua)
require('plugins')
require('color')
require('maps')
require('linter')
require('markdown')
require('lualine').setup{
	options = { theme = 'molokai' },
}
