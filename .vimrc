call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'



call plug#end()
" BASIC SETUP

let g:mapleader=','
" enter the current millenium
set nocompatible
set wildignore+=*/node_modules/*,*.so,*.swp,*.zip 

" easyMotion
map <Leader> <Plug>(easymotion-prefix)

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" enable mouse
" set mouse=a

" other 
set number
set tabstop=2
set expandtab
set shiftwidth=0
colorscheme gruvbox 
set background=dark 

" mapping
map <C-n> :NERDTreeToggle<CR>

" Search down into subfolders 
" Provides tab-completion for all file-related tasks
" For search _c-header.html you can write '_c-he' + tab or '*hea' + tab
set path+=**

" Display all matching files when we tab complete
set wildmenu

" MUST ASK
" - :b lets you autocomplete any open buffer

" TAG JUMPING:

" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER: 
" - This doesn't help if you want a visual list of tags

" AUTOCOMPLETE 

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS: 
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'compete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list


