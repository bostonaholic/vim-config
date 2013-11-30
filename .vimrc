" required for several plugins
  set nocompatible
  filetype off

" <Leader>
  let mapleader=","

" bring in the bundles
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

" load plugins
  runtime! plugins.vim

" perform autoindenting based on filetype plugin
  filetype plugin indent on

" load configs
  runtime! general.vim
  runtime! mappings.vim
