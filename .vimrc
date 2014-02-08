set t_ti= t_te=
set vb t_vb=
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set nowrap

" By default, use soft tabs
set expandtab

" But if the file seems to use hard tabs, use them instead
"function Kees_settabs()
"    if len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^\\t"')) > len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^ "'))
"        set noexpandtab
"    endif
"endfunction
"autocmd BufReadPost * call Kees_settabs()

set showmatch
set autoindent
set pastetoggle=<F5>
set smartindent
set ignorecase
set smartcase
"set background=light
set backspace=indent,eol,start
set ruler
set t_Co=256
syntax on

au BufNewFile,BufRead *.in set filetype=javascript
au BufNewFile,BufRead *.ctxlib set filetype=javascript
au BufNewFile,BufRead *.ctp set filetype=php
" colorscheme autumn2
colorscheme elflord
set background=dark
set encoding=utf8
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabDefaultCompletionType = "context"
set encoding=utf8

"set rtp+=$GOROOT/misc/vim
filetype plugin on
"autocmd BufRead,BufNewFile *.go set filetype=go | setlocal noexpandtab

" Go stuff
syntax on
autocmd BufWritePre *.go Fmt
autocmd FileType go compiler go
filetype plugin indent on

set t_kd=
set t_ku=
set t_kr=
set t_kl

syntax on

