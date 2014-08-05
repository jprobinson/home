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


" Go
let g:go_bin_path = expand("~/go/bin")
let go_auto_type_info = 0

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
