# vimJuang
My (Juang, Yi-Lin's) Vimrc.

## Install
```
cd
git clone https://github.com/frankyjuang/vimJuang .vimJuang
sh .vimJuang/install.sh
```

## Update
```
cd ~/.vimJuang
git pull --rebase
```

## Plugins
- [Vundle.vim](https://github.com/VundleVim/Vundle.vim): The plug-in manager for Vim.
- [bufexplorer](https://github.com/jlanzarotta/bufexplorer): BufExplorer Plugin for Vim.
- [matchit.zip](https://github.com/vim-scripts/matchit.zip): Extend % matching for HTML, LaTeX, and many other languages.
- [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.
- [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.
- [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope.
- [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
- [vim-airline-theme](https://github.com/vim-airline/vim-airline-theme): vim-airline's theme.
- [vim-expand-region](https://github.com/terryma/vim-expand-region): Visually select increasingly larger regions of text using the same key combination.
- [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal.
- [vim-surround](https://github.com/tpope/vim-surround): Quoting/parenthesizing made simple.
- [vimtex](https://github.com/lervag/vimtex): Support for writing LaTeX documents.

## Dependencies
- (Optional) [Exuberant Ctags](http://ctags.sourceforge.net/): generate tag files. Needed by plugin tagbar.
- (Optional) [Pylint](http://ctags.sourceforge.net/): Better syntax checker for python. Used by plugin syntastic.
- (Optional) [ESLint](http://eslint.org/): The pluggable linting utility for JavaScript and JSX. Used by plugin syntastic. Require additional [config file](https://github.com/frankyjuang/confJuang/blob/master/eslintrc.js).

## Color Scheme
[Tomorrow-Night](https://github.com/chriskempson/tomorrow-theme)

## FAQ

### Why are some symbols missing in my statusbar?
You need to install powerline font [HERE](https://github.com/powerline/fonts.git)!
Or just install it from AUR (Arch Linux only!)
```
yaourt python-powerline-git
```
Dejavu Sans Mono version only
```
yaourt ttf-dejavu-sans-mono-powerline-git
```
