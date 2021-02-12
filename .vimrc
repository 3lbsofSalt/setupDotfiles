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

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'frazrepo/vim-rainbow'
    "Plugin '2072/PHP-Indenting-for-VIm'
    Plugin 'captbaritone/better-indent-support-for-php-with-html'
    Plugin 'posva/vim-vue'

call vundle#end()
