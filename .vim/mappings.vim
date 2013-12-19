" Quickly edit/source the vimrc file
  nmap <silent> <Leader>ev :edit $MYVIMRC<cr>
  nmap <silent> <Leader>sv :source $MYVIMRC<cr>

" shortcuts for frequenly used files
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>
  nmap ge :e Gemfile<cr>

" window navigation
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" cycle windows
  " nmap <C-S-h> <C-W>R
  " nmap <C-S-l> <C-W>r

" yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" clear search highlight
  nnoremap <Leader><Space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <C-W>+
  nnoremap <S-Down> <C-W>-
  nnoremap <S-Left> <C-W><
  nnoremap <S-Right> <C-W>>
