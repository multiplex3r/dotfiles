" color scheme should match terminal otherwise eww
set t_Co=256
colorscheme matrix
highlight LineNr ctermfg=green
" make backspace work like notepad :/
set backspace=2
" vim markdown folding .. source: https://github.com/nelstrom/vim-markdown-folding
set nocompatible
if has("autocmd")
    filetype plugin indent on
endif

set fillchars+=vert:│
highlight VertSplit cterm=NONE
set splitbelow

" disable those crazy VI bindings
set nocompatible

" copy paste using system clipboard
set clipboard=unnamed

" enable code folding because wtfbbq
set foldmethod=indent

" fire up pathogen vim addons
execute pathogen#infect()

" set recursive path for searching with :f
set path +=**

" hilight current line
set cursorline

" hilight whitespace I care about
"set list listchars=tab:▸\ ,eol:¬,space:·

" relative numbers with normal for insert
set nu
" set rnu
" function! ToggleNumbersOn()
"     set nu!
"     set rnu
" endfunction
" function! ToggleRelativeOn()
"     set rnu!
"     set nu
" endfunction
" autocmd FocusLost * call ToggleRelativeOn()
" autocmd FocusGained * call ToggleRelativeOn()
" autocmd InsertEnter * call ToggleRelativeOn()
" autocmd InsertLeave * call ToggleRelativeOn()

" never /g a find and replace again
set gdefault

" increase security for encryption
set cryptmethod=blowfish2

" fancy stuff
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline_theme='dark_minimal'
set guifont=Sauce\ Code\ Powerline:h12
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
syntax enable
set mouse=a
autocmd BufRead,BufNewFile *.md set filetype=markdown

" keymap for nerdtree
map <C-n> :NERDTreeTabsToggle<CR>

" set paste mode
set pastetoggle=<F2>

" enable spellcheck for markdown
" autocmd FileType markdown setlocal spell
filetype plugin indent on

" spaces > tabs?
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set incsearch
set hlsearch

" macvim cmd+number tabs
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

"" shortcuts to extended functionality
" run in python
map <F9> :exec<CR>:!python %<CR>

" xxd file contents in vim and reassemble
map <F2> :exec<CR>:%!xxd<CR>
map <F3> :exec<CR>:%!xxd -r<CR>

set ruler

set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
let g:airline_powerline_fonts = 1
set showmatch
let python_highlight_all = 1
