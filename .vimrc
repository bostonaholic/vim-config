" required for several plugins
  set nocompatible
  filetype off

" bring in the bundles
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

" load plugins
  runtime! plugins.vim

" perform autoindenting based on filetype plugin
  filetype plugin indent on
