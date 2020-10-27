

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'aluriak/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'neoclide/coc.nvim', { 'branch': 'release' }
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

call vundle#end()

"source ~/.fzf/plugin/fzf.vim
" Turn on syntax highlighting
syntax on

set rtp+=/usr/local/opt/fzf

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL


" Color scheme
colorscheme gruvbox
set bg=dark

" coc-shortcuts
nmap <leader>gd <Plugin>(coc-definition)
nmap <leader>gr <Plugin>(coc-reference)

"Gfiles
nnoremap <C-p> :GFiles<CR>

" Nerd Tree configuration
map <C-z> :NERDTreeToggle<CR>

" TagBar configuration
nmap <F2> :TagbarToggle<CR>
