set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/opt/homebrew/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'vim-fuzzbox/fuzzbox.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'catppuccin/vim', {'as': 'catppuccin'}
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'liuchengxu/vim-which-key'
" 'Plugin 'preservim/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set cursorline

syntax on

set t_Co=256
set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set expandtab
set tabstop=3
set shiftwidth=3

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

"colorscheme catppuccin_mocha

"set background=dark

let g:airline_powerline_fonts=1
"let g:airline_theme='dark'
"let g:airline_theme='catppuccin_mocha'
let g:airline_theme = "tokyonight"
let g:airline#extensions#tabline#enabled=1

inoremap jk <ESC>
noremap <silent> <C-n> :set relativenumber!<CR>
inoremap <F5> <C-R>=strftime("%Y-%m-%d") <CR>	" insert current date
nnoremap <F5> i<C-R>=strftime("%Y-%m-%d") <CR>	" insert current date

" remap NertTree
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

" remap which-key
set timeoutlen=500
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

