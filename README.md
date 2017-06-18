#VIM Laravel IDE
My VIM configuration and plugins for developing laravel apps


###Plugins
- [colorschemes](https://github.com/flazz/vim-colorschemes)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [delimitMate](https://github.com/Raimondi/delimitMate)
- [dracula-theme](https://github.com/dracula/vim)
- [html5.vim](https://github.com/othree/html5.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [NERDTree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [php.vim](https://github.com/StanAngeloff/php.vim)
- [syntastic](https://github.com/vim-syntastic/syntastic)
- [tagbar](https://github.com/majutsushi/tagbar)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [vim-autotag](https://github.com/craigemery/vim-autotag)
- [vim-blade](https://github.com/jwalton512/vim-blade)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-php-namespace](https://github.com/arnaud-lb/vim-php-namespace)
- [vim-surround](https://github.com/tpope/vim-surround)



###Installation
- Backup your existing ~/.vim directory
```bash
mv ~/.vim ~/.vim_backup
```
- Clone this repository to ~/.vim
```bash
git clone https://github.com/sembrex/myvim.git ~/.vim
```
- Enter ~/.vim directory
```bash
cd ~/.vim
```
- Clone all plugins
```bash
git submodule update --init --recursive
```