if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" autocomplete
Plug 'valloric/youcompleteme'

" autosave
Plug 'vim-scripts/vim-auto-save'

" languages
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mustache/vim-mustache-handlebars'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" color scheme
Plug 'romainl/apprentice'

call plug#end()

" color scheme
colorscheme apprentice

" spacing
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set smarttab

set number
set ic
set noswapfile

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

inoremap jj <Esc>

let mapleader = ' '
nnoremap <leader>f :FZF<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader>b :Buffer<cr>
nnoremap <leader>e :Ex<cr>
