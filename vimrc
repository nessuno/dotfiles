set nocompatible
set laststatus=2
set encoding=utf-8
execute pathogen#infect()
syntax on
set bg=dark
colorscheme wombat256mod 
set ai et ts=4 sts=4 sw=4
filetype indent plugin on
set ruler
set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme = 'tomorrow'

nmap <F1> <Esc>
vmap <F1> <Esc>
imap <F1> <Esc>
