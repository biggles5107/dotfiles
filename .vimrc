" get mouse support working properly
set mouse=a
set ttymouse=xterm2

" enable modeline support
set modeline
set modelines=5

" syntax highlighting
syntax on

" backspacing stuff (incl newlines)
set backspace=indent,eol,start

" tabs set to 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab

" exception being python bc python requires at least 4 spaces
filetype plugin on
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
