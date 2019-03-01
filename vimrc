" PATHOGEN ================================================
filetype off
execute pathogen#infect()
filetype plugin indent on
syntax on


" VI INCOMPATIBLE =========================================
set nocompatible
set modelines=0


" TAB =====================================================
set tabstop=8
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab


" COMMON SETTING ==========================================
set omnifunc=syntaxcomplete#Complete
set mouse=a
set encoding=utf-8
set scrolloff=3
set title

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

set history=1000
set undolevels=10000

set nobackup
set noswapfile

set cursorline

set ttyfast
set ruler
set backspace=indent,eol,start

set pastetoggle=<F2>

set number
set norelativenumber

set undofile
set undodir=/tmp

set shell=/bin/zsh
set lazyredraw
set matchtime=3

set laststatus=2
set listchars=tab:▸\ ,eol:¬
set clipboard=unnamedplus
if has('macunix')
    set clipboard=unnamed
endif

set splitbelow
set splitright
set fillchars+=vert:\ 

set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

set wildignore+=*/node_modules/*,*/vendor/*,*/bower_components/*
set tags+=tags,tags.vendors
let g:autotagTagsFile="tags,tags.vendors"

"color molokai
color karomap


" GUI =====================================================
if has('gui_running')
    set guioptions-=T
    set lines=50 columns=150 linespace=3
    set guifont=Monaco\ for\ Powerline\ 9
endif


" SEARCH ==================================================
set ignorecase
set incsearch
set hlsearch


" LEADER KEY ==============================================
let mapleader = ","


" NERDTree ================================================
noremap <Leader>m :NERDTreeToggle<cr>

let g:NERDTreeShowHidden = 1
let g:NERDTreeChDirMode = 2

au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" SYNTASTIC ===============================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['csslint']

noremap <silent> <F4> :SyntasticCheck<CR>
noremap! <silent> <F4> <ESC>:SyntasticCheck<CR>


" BUFFER ==================================================
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>
nmap <Leader>x :bp <BAR> bd #<CR>
nmap <C-x> :bp <BAR> bd #<CR>
nmap <Leader>q :qa!<CR>
nmap <Leader>w :wa<CR>

nmap <F8> :TagbarToggle<CR>


" AUTO SAVE, REDRAW, RESIZE ===============================
au FocusLost * :wa
au FocusGained * :redraw!
au VimResized * :wincmd =


" TRIM TRAILING SPACES ====================================
au FileType php,css,js,html,vue,py au BufWritePre <buffer> %s/\s\+$//e


" COPY, DELETE, PASTE =====================================
vmap <Leader>y "+y
vmap <Leader>d "+d

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


" vim-php-namespace =======================================
" insert use
let g:php_namespace_sort_after_insert = 1
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
au FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
au FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" expand class
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
au FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
au FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" sort use
au FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
au FileType php noremap <Leader>s :call PhpSortUse()<CR>


" AIRLINE =================================================
" let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" KEY MAPPING =============================================
nnoremap <Leader>v <C-v>
vmap <Tab> >
vmap <S-Tab> <

" fold tags
nnoremap <Leader>f vatzf
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

iabbrev </ </<C-X><C-O><Del><Del>

nnoremap ; :
vnoremap ; :

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap / /\v

nnoremap <Leader>n :enew<CR>

" delimitMate =============================================
let g:delimitMate_expand_cr=1
let g:delimitMate_jump_expansion=1


" AUTOCOMPLETE ============================================
set completeopt-=preview

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::', ' '],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" autoclose omni
"au CursorMovedI * if pumvisible() == 0|pclose|endif
"au InsertLeave * if pumvisible() == 0|pclose|endif

"set completeopt=longest,menuone
"
"au FileType php set omnifunc=phpcomplete#CompletePHP
"au FileType python set omnifunc=pythoncomplete#Complete
"au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"au FileType html set omnifunc=htmlcomplete#CompleteTags
"au FileType xml set omnifunc=xmlcomplete#CompleteTags
"au FileType css set omnifunc=csscomplete#CompleteCSS
"au FileType cpp set omnifunc=omni#cpp#complete#Main


" php.vim =================================================
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  au!
  au FileType php call PhpSyntaxOverride()
augroup END

