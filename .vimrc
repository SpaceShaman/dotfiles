" use jkl; instead of hjkl as ergonomic alternative over historic
noremap ' ;
noremap ; l
noremap l k
noremap k j
noremap j h
noremap L 5k
noremap K 5j
" move window focus with alt + jkl;
noremap <A-;> <C-w>l
noremap <A-l> <C-w>k
noremap <A-k> <C-w>j
noremap <A-j> <C-w>h
" split window with alt + vh
noremap <A-v> <C-w>v
noremap <A-h> <C-w>s
" new tab with alt + t
noremap <A-t> :tabnew<CR>
" close all tabs witout curent ctrl + q
noremap <C-q> :tabonly<CR>
" close window with ctrl + w
noremap <C-w> <C-w>c
" open file with ctrl + o
noremap <C-p> :e<Space>
" save file with ctrl + s
noremap <C-s> :w<CR>