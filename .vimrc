" General Settings
set nocompatible               " Use Vim's default settings
filetype off                   " Disable filetype while loading plugins
set backspace=indent,eol,start " More intuitive delete functionality

" Visual and Interface
set number                     " Display line numbers
set cursorline                 " Highlight the active line
set showmatch                  " Show matching parenthesis
set wildmenu                   " Display menu in command-line completion

colorscheme desert             " Use the 'desert' colorscheme (easy on the eyes)
set background=dark            " Dark theme mode
highlight Normal ctermbg=235   " Dark gray background
syntax on

" Indentation and Tabs
set tabstop=4                  " Width of tab character
set shiftwidth=4               " Width of automatic indentation
set expandtab                  " Use spaces instead of tabs
set smarttab                   " Smart tabs
set autoindent                 " Auto-indentation
set smartindent                " Smart indentation

" YAML Filetype Indentation
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Search and Replacement
set hlsearch                   " Highlight search results
set incsearch                  " Show matches interactively during search
set ignorecase                 " Case-insensitive search
set smartcase                  " Case-sensitive search if query contains uppercase letters

" Other Settings
set undofile                   " Preserve undo history (even after Vim is closed)
set clipboard=unnamedplus      " Use system clipboard
set splitright                 " Open new windows to the right

filetype plugin indent on      " Enable plugins and indentation based on filetype
