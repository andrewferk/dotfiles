" == BEGIN Vundle loading
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'altercation/vim-colors-solarized'
Bundle 'indenthtml.vim'
Bundle 'MarcWeber/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'nono/vim-handlebars'
Bundle 'joonty/vdebug.git'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'

"" == END Vundle loading

" enable syntax highlighting
syntax enable

" display cursor position in status bar
setlocal ruler

" highlight all search matches
setlocal hlsearch

" indentation by filetype
filetype plugin indent on
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype html       setlocal ts=2 sts=2 sw=2 et
autocmd Filetype php        setlocal ts=4 sts=4 sw=4 et

" indentation for indent/html.vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" enable 256 colors
"setlocal t_Co=256

" display tab and eol characters
set list
set listchars=eol:$,tab:>-
hi NonText ctermfg=1 guifg=red
hi SpecialKey ctermfg=1 guifg=red

" highlight characters after 80 columns
set colorcolumn=80

" show line numbers
set relativenumber

" tab will complete as much as possible, then provide a list, then cycle
set wildmode=longest,list,full
set wildmenu

" turn on spell-checking
set spell

" ES6 syntax highlighting
au BufNewFile,BufRead *.es6 set filetype=javascript

" auto-reload .vimrc
augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

" Command-T max height of 20
let g:CommandTMaxHeight=20

" allow backspacing
set backspace=indent,eol,start

" Allow paste without indents
set pastetoggle=<F2>

" Toggle Tagbar with F8
nmap <F8> :TagbarToggle<CR>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
