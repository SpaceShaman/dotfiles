" use jkl; instead of hjkl as ergonomic alternative over historic
let mapleader=" "
noremap ' ;
noremap ; l
noremap l k
noremap k j
noremap j h
noremap L 5k
noremap K 5j
" move window focus with alt + jkl;
noremap <leader>; <C-w>l
noremap <leader>l <C-w>k
noremap <leader>k <C-w>j
noremap <leader>j <C-w>h
" split window with alt + vh
noremap <leader>v <C-w>v
noremap <leader>h <C-w>s
" new tab with alt + t
noremap <leader>t :tabnew<CR>
" close all tabs witout curent ctrl + q
noremap <C-q> :tabonly<CR>
" close window with ctrl + w
noremap <C-w> <C-w>c
" open file with ctrl + o
noremap <C-p> :e<Space>
" save file with ctrl + s
noremap <C-s> :w<CR>
" easymotion movement
noremap <leader>s <leader><leader>s
noremap <leader>f <leader><leader>f
noremap <leader>F <leader><leader>F
noremap <leader>w <leader><leader>w
noremap <leader>b <leader><leader>b
noremap <leader>e <leader><leader>e
noremap <leader>ge <leader><leader>ge
noremap <leader>/ <leader><leader>/