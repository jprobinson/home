call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'sebdah/vim-delve'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'prettier/vim-prettier', { 
	\ 'do': 'yarn install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 

call plug#end()

filetype on
filetype indent on
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set mouse=a
set ruler

set laststatus=2
set t_Co=256
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'

let g:molokai_original = 1
let g:rehash256 = 1

" vim-go configs
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"

" visual reminder to keeps lines <=80 chars
colorscheme ron
let &colorcolumn=join(range(91,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" autocompletion settings for Shougo/deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '/Users/jp/go/bin/gocode'
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
