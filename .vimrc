set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tbabej/taskwiki'
Plugin 'vimwiki/vimwiki'

" Python
Plugin 'Valloric/YouCompleteMe'

" PHP
Plugin 'phpactor/phpactor', {'for': 'php', 'do':'composer install'}

""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
 

""""""""""""""""""""""""""""
" Vimwiki
""""""""""""""""""""""""""""
filetype plugin on
syntax on



" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

