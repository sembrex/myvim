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
- [unite](https://github.com/Shougo/unite.vim)
- [vim-airline](https://github.com/vim-airline/vim-airline)



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