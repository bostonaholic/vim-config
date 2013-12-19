" enable syntax highlighting
  syntax enable

" default color scheme
  set background=dark
  colorscheme molokai

" hide buffers instead of closing them
  set hidden

" don't wrap long lines
  set nowrap

" scroll the window when we get near the edge
  set scrolloff=4 sidescrolloff=10

" use 2 spaces for tabs
  set smarttab expandtab tabstop=2 softtabstop=2 shiftwidth=2

" enable line numbers, and don't make them any wider than necessary
  set number numberwidth=2

" show the first match as search strings are typed
  set incsearch

" highlight the search matches
  set hlsearch

" highlight current line
  set cursorline

" searching is case insensitive when all lowercase
  set ignorecase smartcase

" set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" pick up external file modifications
  set autoread

" match indentation of previous line
  set autoindent copyindent

" show matching parentheses
  set showmatch matchtime=3

" don't blink the cursor
  set guicursor=a:blinkon0

" show current line info (current/total)
  set ruler rulerformat=%=%l/%L

" show status line
  set laststatus=2

" flip the default split directions to sane ones
  set splitright splitbelow

" don't beep for errors
  set visualbell

" make backspace work in insert mode
  set backspace=indent,eol,start

" highlight trailing whitespace
  set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" have the mouse enabled all the time
  set mouse=a

" use tab-complete to see a list of possiblities when entering commands
  set wildmode=list:longest,full

" don't write backup files
  set nobackup noswapfile

" save on losing focus
  autocmd FocusLost * :wa
  augroup AutoWrite
    autocmd! BufLeave * :update
  augroup END
  set autowrite autowriteall
