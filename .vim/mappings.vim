" Quickly edit/source the vimrc file
  nmap <silent> <leader>ev :edit $MYVIMRC<cr>
  nmap <silent> <leader>sv :source $MYVIMRC<cr>

" shortcuts for frequenly used files
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>
  nmap ge :e Gemfile<cr>

" easy window navigation
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" clear search highlight
  nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>+
  nnoremap <S-Down> <c-w>-
  nnoremap <S-Left> <c-w><
  nnoremap <S-Right> <c-w>>
