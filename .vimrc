if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'valloric/youcompleteme'

" autosave
Plug 'vim-scripts/vim-auto-save'

" formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" languages
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jparise/vim-graphql'
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'

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

" elm-vim overrides
autocmd FileType elm setlocal softtabstop=4 shiftwidth=4
let g:elm_setup_keybindings = 0

set number
set ic
set noswapfile
set hlsearch

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

inoremap jj <Esc>

let mapleader = ' '
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader>s :/
nnoremap <leader>b :Buffer<cr>
nnoremap <leader>e :Ex<cr>
nnoremap <leader>g <C-w><C-w>

nnoremap <silent> <leader> :nohlsearch<Bar>:echo<CR>
