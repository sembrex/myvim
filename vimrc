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

"set cursorline
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

set tags+=tags,vendor.tags
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set clipboard=unnamedplus


" ========================================================================================
" Changing Leader Key
let mapleader = ","


" ========================================================================================
" Mapping to NERDTree
noremap <leader>m :NERDTreeToggle<cr>
let g:NERDTreeShowHidden = 1
let g:NERDTreeChDirMode = 2


" ========================================================================================
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


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
let g:autotagTagsFile=".tags"
let g:syntastic_php_checkers = ['php']


" ========================================================================================
" Functions
" vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


" ========================================================================================
" Airline
" let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
