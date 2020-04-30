set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#rc()
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
Plugin 'mattn/emmet-vim'					"HTML Tags		
Plugin 'jiangmiao/auto-pairs' 				"Autocomplete brackets
Plugin 'ryanoasis/vim-devicons'				"Icons
Plugin 'ctrlpvim/ctrlp.vim'					"Fuzzy Find Files
Plugin 'preservim/nerdcommenter'

"GIT
Plugin 'airblade/vim-gitgutter'


"Autocomplete system
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" PHP
Plugin 'noahfrederick/vim-laravel'

" VueJs
Plugin 'leafOfTree/vim-vue-plugin'

" Misc
Plugin 'mhinz/vim-startify'

""""""""""""""""""""""""""""
" Options
""""""""""""""""""""""""""""
set encoding=UTF-8

"Airline theme
let g:airline_theme='wombat'

"Find buildit
set path+=**

"Show all matching files when we tab complete
set wildmenu

"Autocomplete in all buff

"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect

"autocmd vimenter * NERDTree


"Show lines numbre
set number
set relativenumber

"Tab Space
set tabstop=4
set shiftwidth=4

"Highlight current line
set cursorline
hi cursorline cterm=NONE ctermbg=240 ctermfg=226


"C-Tags
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

""""""""""""""""""""""""""""
" Laravel
""""""""""""""""""""""""""""
nmap <leader>lr :e routes/web.php<cr>

""""""""""""""""""""""""""""
" VueJs
""""""""""""""""""""""""""""

""""""""""""""""""""""""""""
" Fuzzy Find Files
""""""""""""""""""""""""""""
set wildignore+=*.zip,*.png,*.jpg,*.gif,*.pdf,*DS_Store*,*/.git/*,*/node_modules/*,*/build/*,package-lock.json,*/vendor/*

""""""""""""""""""""""""""""
" Nerd Commenter
""""""""""""""""""""""""""""
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = { 'js': {'left': '//' } }


""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

nmap <C-s>:source $HOME/dots/.vimrc<CR>

" leader key
let mapleader = ","
 

""""""""""""""""""""""""""""
" Vimwiki
""""""""""""""""""""""""""""
"filetype plugin on
"syntax on

""""""""""""""""""""""""""""
"Languaje Server Procol COC
""""""""""""""""""""""""""""
let g:coc_node_path = '/usr/bin/node' "NodeJS Path

let g:coc_global_extensions = [
	\'coc-phpls',
	\'coc-tsserver',
	\'coc-json',
	\'coc-html',
	\'coc-css',
	\'coc-ultisnips',
	\]


"Text fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300" Brief help

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
