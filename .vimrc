set nu
set ruler
set smartcase
set hlsearch
set ai

set tabstop=4
set cursorline
set shiftwidth=4

set t_Co=256
"set bg=dark
colo ron

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CurSorLine cterm=none
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

set nocompatible
filetype off

let hasVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let hasVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


filetype plugin indent on

let g:airline_powerline_fonts = 1
set laststatus=2

"let g:airline_theme='solarized'
let g:airline_theme='violet'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formtter = 'unique_tail'

inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap {<CR> {<CR>}<Esc>ko


if hasVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
