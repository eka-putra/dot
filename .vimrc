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
let g:airline#extensions#branch#enabled=1
highlight LineNr ctermfg=black ctermbg=none
:set cursorline
:hi clear cursorline
colorscheme Tomorrow-Night-Eighties
imap jj <esc>
:set tabstop=2
:set shiftwidth=2
:set expandtab
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F5> :w<Return>:make<Return>:cwindow<Return>
map <F6> :cprevious<Return>
map <F7> :cnext<Return>
map <F8> :ccl<Return>
map <F9> :!java -cp "%:p:h:$CLASSPATH" "%:t:r"<Return>
"autocmd vimenter * NERDTree
:set relativenumber

" MapLeader
let mapleader = ';'
map <leader>q :q<cr>
map <leader>wq :wq<cr>
map <leader>; $
" Buffer
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bw :bw<cr>
map <leader>bd :bd<cr>
" Window
map <leader>ww <C-w>w
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
