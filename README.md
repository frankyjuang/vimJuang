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
- [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'.
- [bufexplorer](https://github.com/jlanzarotta/bufexplorer): BufExplorer Plugin for Vim.
- [fzf.vim](https://github.com/junegunn/fzf.vim): Things you can do with fzf and Vim.
- [matchit.zip](https://github.com/vim-scripts/matchit.zip): Extend % matching for HTML, LaTeX, and many other languages.
- [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.
- [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.
- [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope.
- [undotree](https://github.com/mbbill/undotree): The ultimate undo history visualizer for VIM.
- [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
- [vim-airline-theme](https://github.com/vim-airline/vim-airline-theme): vim-airline's theme.
- [vim-expand-region](https://github.com/terryma/vim-expand-region): Visually select increasingly larger regions of text using the same key combination.
- [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal.
- [vim-repeat](https://github.com/tpope/vim-repeat): Enable repeating supported plugin maps with ".".
- [vim-surround](https://github.com/tpope/vim-surround): Quoting/parenthesizing made simple.
- [vimtex](https://github.com/lervag/vimtex): Support for writing LaTeX documents.

## Plugins for filetypes
- [vim-python/python-syntax](https://github.com/vim-python/python-syntax): Python syntax highlighting for Vim.
- [fatih/vim-go](https://github.com/fatih/vim-go): Go development plugin for Vim.
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript): Vastly improved Javascript indentation and syntax support in Vim.
- [Glench/Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax): An up-to-date jinja2 syntax file.

## Dependencies
- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher): A code-searching tool similar to ack, but faster. Needed by plugin ack.vim.
- [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder written in Go. Needed by plugin fzf.vim.
- [Exuberant Ctags](http://ctags.sourceforge.net/): generate tag files. Needed by plugin tagbar.
- (Optional) [CppLint](https://github.com/google/styleguide/tree/gh-pages/cpplint): Automated checker to make sure a C++ file follows Google's C++ style guide. Used by plugin syntastic.
- (Optional) [Pylint](https://www.pylint.org/): Better syntax checker for python. Used by plugin syntastic.
- (Optional) [ESLint](http://eslint.org/): The pluggable linting utility for JavaScript and JSX. Used by plugin syntastic. Require additional [config file](https://github.com/frankyjuang/confJuang/blob/master/eslintrc.js).
- (Optional) [stylelint](https://stylelint.io/): A mighty, modern CSS linter. Used by plugin syntastic. Require additional [config file](https://github.com/stylelint/stylelint-config-standard). Checkout [confJuang](https://github.com/frankyjuang/confJuang/blob/master/README.md) for more information.

## Color Scheme
[Tomorrow-Night](https://github.com/chriskempson/tomorrow-theme)

## FAQ

### Why are some symbols missing in my statusbar?
You need to install powerline font [HERE](https://github.com/powerline/fonts.git)!

### I press function keys on my Mac. Nothing happened?
Mac sets function keys to other usages as default.
Remap mission control, launchpad and keyboard illumination control keys to original function keys.
Take a look at [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements).
