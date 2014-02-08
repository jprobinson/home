filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

autocmd FileType go autocmd BufWritePre <buffer> Fmt
syntax on
