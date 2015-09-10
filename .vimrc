execute pathogen#infect()

set t_ti= t_te= 
set vb t_vb=
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set autoindent
set mouse=a
set pastetoggle=<F5>
set smartindent
set ignorecase
set smartcase
set backspace=indent,eol,start
set ruler
set encoding=utf8

filetype plugin indent on

" airline
set laststatus=2
set t_Co=256
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'

" NERDTree
let NERDTreeShowHidden=1

" Go
let g:go_bin_path = expand("~/go/bin")
" let g:go_auto_type_info = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 0

let g:molokai_original = 1
let g:rehash256 = 1

set t_ku=OA
set t_kd=OB
set t_kr=OC
set t_kl=OD

syntax on

" Front end codes
" Javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
