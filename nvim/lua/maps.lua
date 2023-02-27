local keymap=vim.keymap
local set=vim.g
local cmd=vim.cmd

set.mapleader=' '
--set.mapleader='<Space>'

keymap.set('n','<c-o>','<cmd>NERDTreeToggle<cr>')
keymap.set('n','<leader>sf','<cmd>source%<cr>')
keymap.set('n','<leader>scf','<cmd>w<cr>')
-- Gestion des plugins
keymap.set('n','<leader>pi','<cmd>PackerInstall<cr>')
keymap.set('n','<leader>pu','<cmd>PackerUpdate<cr>')
keymap.set('n','<leader>pc','<cmd>PackerClean<cr>')
--keymap.set('n','<up>','<cmd>tab new<cr>')
--keymap.set('n','<down>','<cmd>tab close<cr>')
--keymap.set('n','<left>','<cmd>tabp<cr>')
--keymap.set('n','<right>','<cmd>tabn<cr>')
-- Fuzzy finder
keymap.set('n','<leader>fsb','<cmd>Buffers<CR>')
keymap.set('n','<leader>fsf','<cmd>Files<CR>')
keymap.set('n','<leader>fsl','<cmd>Lines<CR>')
-- Navigue entre les erreurs ALE
keymap.set('n','<C-e>','<cmd>ALENextWrap<cr>')
keymap.set('n','<C-i>','<cmd>ALEPreviousWrap<cr>')
-- Gestion des onglets Neovim
keymap.set('n','<C-n>','<cmd>tab new<cr>')
keymap.set('n','<C-q>','<cmd>tab close<cr>')
keymap.set('n','<C-r>','<cmd>tabn<cr>')
keymap.set('n','<C-c>','<cmd>tabp<cr>')
-- remap la touche ESC sur la combinaison leader-TAB
keymap.set('n','<leader><Tab>','<Esc>')
keymap.set('i','<leader><Tab>','<Esc>')
keymap.set('v','<leader><Tab>','<Esc>')
keymap.set('o','<leader><Tab>','<Esc>')

cmd("autocmd BufNewFile,BufRead *.asm set syntax=masm")
cmd("autocmd BufNewFile,BufRead *.s set syntax=asm")
--cmd("autocmd BufNewFile,BufRead *.lua set syntax=lua")
cmd("autocmd BufWriteCmd,BufRead *.json :%!python3 -m json.tool")
