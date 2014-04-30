execute pathogen#infect()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set autoindent
set pastetoggle=<F5>
set smartindent
set ignorecase
set smartcase
set backspace=indent,eol,start
set ruler
set encoding=utf8

" NERDTree
map <silent> <C-n> :NERDTreeFocus<CR>

" Front end codes
" Javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Go stuff
let g:go_bin_path = expand("~/go/bin")
filetype plugin indent on

syntax on
