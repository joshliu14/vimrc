set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set nocompatible
set laststatus=2
set statusline=%F%m%r%h%w%=\ [%Y]\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
colorscheme default
filetype on
filetype plugin on
filetype indent on
syntax on

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" vim plugin manager
call plug#begin()
  Plug 'github/copilot.vim'
  Plug 'dense-analysis/ale'
  Plug 'sbdchd/neoformat'
  Plug 'google/vim-maktaba'
  Plug 'google/vim-codefmt'
  Plug 'google/vim-glaive'
call plug#end()
