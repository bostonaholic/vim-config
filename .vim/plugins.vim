" Vundle
  Plugin 'gmarik/Vundle.vim'

" General
  Plugin 'tomasr/molokai'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'ervandew/supertab'
  Plugin 'scrooloose/nerdtree'
    let NERDTreeHijackNetrw = 0

    nmap gt :NERDTreeToggle<CR>
    nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>

  Plugin 'kien/ctrlp.vim'
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    let g:ctrlp_prompt_mappings = {
        \ 'PrtSelectMove("j")':   ['<down>'],
        \ 'PrtSelectMove("k")':   ['<up>'],
        \ }

  Plugin 'rking/ag.vim'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>

  Plugin 'tpope/vim-markdown'
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END

  Plugin 'godlygeek/tabular'
    function! CustomTabularPatterns()
      if exists('g:tabular_loaded')
        AddTabularPattern! symbols         / :/l0
        AddTabularPattern! hash            /^[^>]*\zs=>/
        AddTabularPattern! chunks          / \S\+/l0
        AddTabularPattern! assignment      / = /l0
        AddTabularPattern! comma           /^[^,]*,/l1
        AddTabularPattern! colon           /:\zs /l0
        AddTabularPattern! options_hashes  /:\w\+ =>/
      endif
    endfunction

    autocmd VimEnter * call CustomTabularPatterns()

    " shortcut to align text with Tabular
    map <Leader>a :Tabularize<space>

  Plugin 'tpope/vim-unimpaired'
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv

" Programming
  Plugin 'tpope/vim-fugitive'
  Plugin 'juvenn/mustache.vim'
  Plugin 'nono/vim-handlebars'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'othree/html5.vim'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'groenewege/vim-less'
  Plugin 'tpope/vim-haml'
    au BufNewFile,BufRead *.haml set filetype=haml

  Plugin 'slim-template/vim-slim'
    au BufNewFile,BufRead *.slim set filetype=slim

  Plugin 'scrooloose/syntastic'
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages={}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': ['css', 'coffee', 'html', 'javascript', 'json', 'less', 'ruby', 'sh', 'vim', 'yaml', 'zsh'],
                               \ 'passive_filetypes': ['haml', 'sass', 'scss', 'slim'] }

" Ruby
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rails'
    map <Leader>oc :Rcontroller<Space>
    map <Leader>ov :Rview<Space>
    map <Leader>om :Rmodel<Space>
    map <Leader>oh :Rhelper<Space>
    map <Leader>oj :Rjavascript<Space>
    map <Leader>os :Rstylesheet<Space>
    map <Leader>oi :Rintegration<Space>
  Plugin 'tpope/vim-cucumber'
  Plugin 'tpope/vim-endwise'
  Plugin 'sunaku/vim-ruby-minitest'

" JavaScript
  Plugin 'pangloss/vim-javascript'
  Plugin 'kchmck/vim-coffee-script'
