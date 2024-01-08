set number
set tags=tags
set mouse=a
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
" set term=screen-256color

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim', {'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1

autocmd vimenter * NERDTree

set scrolloff=5
set undolevels=1000  " maximum number of changes that can be undone
set undoreload=10000
set history=1000
set laststatus=2

set splitright
set splitbelow

set noerrorbells
set visualbell

syntax on
filetype plugin indent on

set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" fzf files
nnoremap <Space><Space> :Files<CR>

let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 1
hi Visual guifg=#1a1a1a guibg=#e4dfff guisp=#e4dfff gui=NONE ctermfg=234 ctermbg=189 cterm=NONE
