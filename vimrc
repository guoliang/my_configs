set nocompatible		" be iMproved
filetype off 			" required


"""
""" Vundle stuff
"""
set rtp+=~/.vim/bundle/vundle/  "set runtimepath
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles:
Bundle 'scrooloose/nerdtree'


""" Vundle End

" NERD Tree config
let NERDTreeWinSize = 58
let NERDTreeIgnore = ['\~$', '\.sw?$', '\.pyc', '\.pyo', '\.gel$', '*auto*']
let g:NERDTreeDirArrows=0
nnoremap <silent> <F8> :NERDTreeToggle<CR>
" End NERD config

filetype plugin indent on     " required!

""""""""""""""""""""""""""""""""""""

"""
""" Misc editor enchantment
"""

set nu 			                " line number"
set backspace=eol,start,indent  "Make backspace work as normal

"""
""" Indention stuff
"""

set autoindent			"Copy indent from current line to new line
set smartindent

set expandtab  "Use the appropriate number of spaces to insert a <Tab>
set tabstop=2
set softtabstop=2
set shiftwidth=2

"""
""" GUI stuff
"""
set t_Co=256
syntax on
colorscheme codeschool

"""
""" Searching enhancment
"""

set ignorecase  "Case insensitive search
set smartcase 	"When pattern contain case it will become sensitive search

set hlsearch	"Highlights search pattern

"Press enter again will take away search result
nnoremap <cr> :noh<cr><cr>

set incsearch
set nolazyredraw

set showmatch	"Show matching bracets when text indicator is over them
set mat=2		"How many tenth of second to blink

""" Saving command
let mapleader = ","

" Fast saving
nmap <leader> :w!<cr>

""" Remove white space
map gu :%s/\s\+$//e<enter> :w<enter>

""" Misc
set omnifunc=syntaxcomplete#Complete

set noswapfile			"Turn of swap files

set gfn=Monospace\ 9

"Highlight whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Extra whitespace removed when saving ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

"GIT auto line wrap
au FileType gitcommit setlocal tw=72

