" use jkl; instead of hjkl as ergonomic alternative over historic
noremap ' ;
noremap ; l
noremap l k
noremap k j
noremap j h
" move window focus with alt + jkl;
noremap <A-;> <C-w>l
noremap <A-l> <C-w>k
noremap <A-k> <C-w>j
noremap <A-j> <C-w>h
" split window with alt + vh
noremap <A-v> <C-w>v
noremap <A-h> <C-w>s
" close window with ctrl + w
noremap <C-w> <C-w>c
" open file with ctrl + o
noremap <C-p> :e<Space>
" save file with ctrl + s
noremap <C-s> :w<CR>