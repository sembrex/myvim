" ========================================================================================
" Pathogen settings.
filetype off
execute pathogen#infect()
filetype plugin indent on
syntax on


" ========================================================================================
" Make vim incompatbile to vi.
set nocompatible
set modelines=0


" ========================================================================================
" TAB settings.
set tabstop=8
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab


" ========================================================================================
" More Common Settings.
set omnifunc=syntaxcomplete#Complete
set mouse=a
set encoding=utf-8
set scrolloff=3

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
hi CursorLine term=bold cterm=bold guibg=Grey40

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

set tags+=tags,tags.vendors
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set clipboard=unnamedplus

set wildignore+=*/node_modules/*,*/vendor/*,*/bower_components/*
set guifont=Monaco\ for\ Powerline:h12

hi Pmenu ctermbg=238 gui=bold

"color molokai
color karomap


" ========================================================================================
" Changing Leader Key
let mapleader = ","


" ========================================================================================
" Mapping to NERDTree
noremap <leader>m :NERDTreeToggle<cr>
let g:NERDTreeShowHidden = 1
let g:NERDTreeChDirMode = 2
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ========================================================================================
" Syntastic
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


" ========================================================================================
" TAB and Shift-TAB in normal mode cycle buffers
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>
nmap <Leader>x :bd<CR>
nmap <F8> :TagbarToggle<CR>
nmap <Leader>q :wqa<CR>


" ========================================================================================
" Events
au FocusLost * :wa
au FocusGained * :redraw!
au VimResized * :wincmd =


" ========================================================================================
" Trim trailing spaces on save
autocmd FileType php,css,js,html,vue autocmd BufWritePre <buffer> %s/\s\+$//e


" ========================================================================================
" Map copy delete and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


" ========================================================================================
" Autostart
let g:autotagTagsFile="tags,tags.vendors"


" ========================================================================================
" Functions
" vim-php-namespace
let g:php_namespace_sort_after_insert = 1
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

" php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" autoclose omni
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" ========================================================================================
" Airline
" let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" KEY MAPPINGS ============================================
nnoremap <C-v> <C-v>
vmap <Tab> >
vmap <S-Tab> <

" remove whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" fold tags
nnoremap <leader>f vatzf
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" AUTOCOMPLETE ============================================
set completeopt=longest,menuone

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
