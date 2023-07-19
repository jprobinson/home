call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sebdah/vim-delve'
Plug 'prettier/vim-prettier', { 
	\ 'do': 'yarn install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'rust-lang/rust.vim'
call plug#end()

filetype on
filetype indent on
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
set ruler

let NERDTreeShowHidden=1

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
let g:go_auto_type_info = 1
let g:go_info_mode = 'gopls'

" visual reminder to keeps lines <=90 chars
colorscheme ron
let &colorcolumn=join(range(91,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" autocompletion settings for Shougo/deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:python3_host_prog = '/usr/local/python3/bin/python'
