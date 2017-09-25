set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'danro/rename.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lambdalisue/vim-pyenv'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'dkprice/vim-easygrep'
Plugin 'tpope/vim-fugitive'
Plugin 'fisadev/vim-isort'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:airline_section_x = ""
let g:airline_section_y = ""
let g:airline_section_z = ""
let g:airline_skip_empty_sections = 1

let g:nerdtree_tabs_open_on_new_tab = 0
let g:nerdtree_tabs_open_on_console_startup=0
let g:NERDDefaultAlign = 'left'
let g:NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__']
map <C-n> :NERDTreeToggle<CR>

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:pymode_lint_ignore="E221,E501"
let g:pymode_folding=0

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(eggs|git|hg|svn|__pycache__|ropeproject|cache)|node_modules|bower_components|coverage|htmlcov|build',
  \ 'file': '\v\.(exe|so|dll|pyc|swp)$',
  \ }
let g:ctrlp_show_hidden = 1

let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_jslint_args = ' '


syntax enable
colorscheme solarized
set background=light

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype json setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype yaml setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

set expandtab
set tabstop=4
set number
set mouse=a
set nofoldenable
set completeopt-=preview
set wrap
set exrc " load local .vimrc for projects

" Tabs navigation
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

let mapleader=","

set secure

