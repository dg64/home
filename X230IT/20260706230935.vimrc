set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'vim-fuzzbox/fuzzbox.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'lilydjwg/colorizer'
Plug 'godlygeek/tabular'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" remap leader to space
let mapleader = " "

let g:NERDCreateDefaultMappings = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set number
set relativenumber
set number relativenumber

set path+=**
set wildmenu
set wildmode=full

set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set splitright
set cursorline

syntax on

set t_Co=256
set termguicolors

let g:airline_powerline_fonts=1
let g:airline_theme="cyberpunk"
let g:airline#extensions#tabline#enabled=1

colorscheme cyberpunk-neon

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'query':   ['fg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

inoremap jk <ESC>
nnoremap ; :
nnoremap <leader>w :w<CR>
noremap <silent> <C-n> :set relativenumber!<CR>
noremap <silent> <C-s> :FZF<CR>

inoremap <F5> <C-R>=strftime("%Y-%m-%d") <CR>	" insert current date
nnoremap <F5> i<C-R>=strftime("%Y-%m-%d") <CR>	" insert current date

" remap NerdTree
nnoremap <leader>ee :NERDTreeToggle<CR> 	" toggle tree

" remap tabs
nnoremap <leader>to :tabnew<CR> 		" open a new tab
nnoremap <leader>tc :tabc<CR>			" close a tab
nnoremap <leader>tn gt<CR>			" move to the next tab
nnoremap <leader>tp gT<CR>			" move to the previous tab
nnoremap <leader>tl :tabs<CR>			" list all open tabs

" remap split 
nnoremap <leader>sh :sp<CR>			" split horizontally
nnoremap <leader>sv :vsp<CR>			" split vertically
nnoremap <leader>so <C-w>n<CR>			" open a new empty window
nnoremap <leader>sx <C-w>c<CR>			" close the current window

" remap fuzzy
nnoremap <silent> <leader>fb :FuzzyBuffers<CR>
nnoremap <silent> <leader>fc :FuzzyCommands<CR>
nnoremap <silent> <leader>ff :FuzzyFiles<CR>
nnoremap <silent> <leader>fg :FuzzyGrep<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>fi :FuzzyInBuffer<CR>
nnoremap <silent> <leader>fm :FuzzyMru<CR>
nnoremap <silent> <leader>fp :FuzzyPrevious<CR>
nnoremap <silent> <leader>fq :FuzzyQuickfix<CR>
nnoremap <silent> <leader>fr :FuzzyMruCwd<CR>

" line manipulation
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

" keep the cursor on the center while scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" remap which-key
set ttimeoutlen=50
set timeoutlen=500
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
