" required for several plugins
  set nocompatible
  filetype off

" <Leader>
  let mapleader=","

" bring in the bundles
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

" load plugins
  runtime! plugins.vim

" finalize vundle
  call vundle#end()

" perform autoindenting based on filetype plugin
  filetype plugin indent on

" load configs
  runtime! general.vim
  runtime! mappings.vim
