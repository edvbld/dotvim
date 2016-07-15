runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized

set hidden
set autoread

set wildignorecase
set path=*/**

command! -nargs=+ Grep execute 'silent grep! <args>' | copen | redraw!
if executable('ag')
    set grepprg=ag\ --vimgrep
endif

imap jj <Esc>
nmap <Leader>g :Grep <cword><cr>
