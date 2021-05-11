command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

set nocompatible
filetype off

" Set up the tabs to be 4 spaces
set tabstop=2 shiftwidth=2
set expandtab

" nothing like some not so smart indents
set autoindent

"the most important line of my vimrc
set number

" Autoread file changes
set autoread

" File finding
set path+=.,**
set wildmenu
set wildmode=list:full
set wildignore=*/node_modules/*,.git/**

" Colemak keybindings
noremap n j
noremap e k
noremap i l

noremap I L
noremap N J
noremap E K

noremap l i
noremap k e
noremap j n

noremap L I
noremap K E
noremap J N

noremap <C-W>n <C-W>j
noremap <C-W>N <C-W>J
noremap <C-W>e <C-W>k
noremap <C-W>E <C-W>K
noremap <C-W>i <C-W>l
noremap <C-W>I <C-W>L

"""""
"Plug stuff


" Makes lightline work
set laststatus=2

" Get rid of the --Insert-- bar because we have lightline instead
set noshowmode


call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'dense-analysis/ale'
    Plug 'ajmwagar/vim-deus'
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'deus',
    \ }

colors deus 


"""""
"Vundle Stuff

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'tpope/vim-surround'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'captbaritone/better-indent-support-for-php-with-html'
    Plugin 'leafOfTree/vim-vue-plugin'

call vundle#end()
