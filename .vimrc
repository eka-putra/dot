execute pathogen#infect()
syntax on
filetype plugin indent on
"syntax enable
:set title
:set number
:set term=screen-256color
:set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnameod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:ariline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#branch#enabled=1
"highlight LineNr ctermfg=black ctermbg=none
":set cursorline
":hi clear cursorline
colorscheme Tomorrow-Night-Eighties
imap jj <esc>
:set tabstop=2
:set shiftwidth=2
:set expandtab
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'
"autocmd Filetype java set makeprg=javac\ %
"set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
"map <F5> :w<Return>:make<Return>:cwindow<Return>
map <F5> :call Compile()<cr>
func! Compile()
  exec "w"
  if &filetype == 'java'
    set makeprg=javac\ %
    set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
  elseif &filetype == 'python'
    "set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    "set errorformat=\%A\ \ File\ \"%f\"\\,\ line\ %l\\,\ %m,%C\ %m,%Z
    "set makeprg=python3\ %
    "set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
    set errorformat=%f:%l:\ %m
  endif
  exec "make"
  exec "cwindow"
endfunc
map <F6> :cprevious<Return>
map <F7> :cnext<Return>
map <F8> :ccl<Return>
"map <F9> :!java -cp "%:p:h:$CLASSPATH" "%:t:r"<Return>
map <F9> :call Run()<cr>
func! Run()
  if &filetype == 'java'
    exec "!java -cp %:p:h:$CLASSPATH %:t:r"
  elseif &filetype == 'python'
    exec "!python3 %"
  endif
endfunc
"autocmd vimenter * NERDTree
:set relativenumber

" MapLeader
let mapleader = ';'
map <leader>q :q<cr>
map <leader>wq :wq<cr>
map <leader>w :w<cr>
map <leader>; $a;
map <leader>p :w<cr>:!python3 %<cr>
" Buffer
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bd :bd<cr>
" Window
map <leader>wh <C-w>h
map <leader>wj <C-w>j
map <leader>wk <C-w>k
map <leader>wl <C-w>l
" NERDTree
map <leader>f :NERDTree<cr>
let NERDTreeQuitOnOpen = 1
" Copy Paste
vmap <leader>c "+y<cr>
nmap <leader>v "+p<cr>
