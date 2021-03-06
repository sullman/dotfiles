set incsearch
set ic
set smartcase
set ruler
set showmatch
set nowrap
set autoindent

" These should be overwritten for known filetypes...
set shiftwidth=2
set softtabstop=2
set tabstop=8
set expandtab

set cursorline

" Disable that infernal beeping!
set noerrorbells visualbell t_vb=

syntax on
colo darkblue " desert and darkblue both work pretty well...

filetype on

autocmd FileType python inoremap # X#
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType python set smarttab

autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set autoindent

autocmd FileType htmldjango set autoindent
autocmd FileType htmldjango set smarttab

autocmd FileType make set shiftwidth=8
autocmd FileType make set softtabstop=8
autocmd FileType make set noexpandtab

autocmd FileType java set shiftwidth=4
autocmd FileType java set softtabstop=4
autocmd FileType java set smarttab
autocmd FileType java set cindent
autocmd FileType java set noexpandtab

autocmd FileType cpp set cindent
autocmd FileType c set cindent

autocmd FileType objj set autoindent

autocmd FileType brs set shiftwidth=4
autocmd FileType brs set softtabstop=4
autocmd FileType brs set tabstop=4
autocmd FileType brs set smarttab
autocmd FileType brs set smartindent cinwords=if,else,for,while,Function
autocmd FileType brs set autoindent

" Whitelisted local vimrc files
let g:localvimrc_whitelist = "^/Users/sullman/plex/"
"let g:localvimrc_sandbox = 0

" Pathogen
call pathogen#infect()
