
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'dylanaraps/wal.vim'

call plug#end()

set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/swap//
set undodir=$HOME/.vim/undo//

syntax off
colorscheme wal

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set smartindent
set scrolloff=5

set backspace=indent,eol,start

set number numberwidth=4
set ruler

set visualbell t_vb=
au GuiEnter * set vb t_vb=

