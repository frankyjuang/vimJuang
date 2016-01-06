echo 'set runtimepath+=~/.vimJuang

source ~/.vimJuang/vimrcs/basic.vim
source ~/.vimJuang/vimrcs/filetypes.vim
source ~/.vimJuang/vimrcs/plugins_config.vim' > ~/.vimrc

if [ -f plugins/Vundle.vim/README.md ]; then
    printf "Vundle alreadly exists!\n"
else
    printf "Install Vundle\n"
    mkdir -p ~/.vimJuang/plugins
    git clone https://github.com/VundleVim/Vundle.vim ~/.vimJuang/plugins/Vundle.vim
fi

printf "Install Plugins\n"
vim +PluginInstall +qall

printf "VimJuang Installed Successfully! Enjoy~\n"
printf "Any problems please contact Yi-Lin Juang (frankyjuang@gmail.com)\n"
