set history=500
set number

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime


" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase


" Highlight search results
set hlsearch


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif


" 1 tab == 4 spaces
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4




set number relativenumber

set autoindent 

set hlsearch

set ignorecase


set smartcase


set linebreak

set noerrorbells

" set spell


set noexpandtab

colorscheme elflord

" # elflord default koehler ron
