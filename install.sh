echo 'set runtimepath+=~/.vimJuang

source ~/.vimJuang/vimrcs/basic.vim
source ~/.vimJuang/vimrcs/filetypes.vim
source ~/.vimJuang/vimrcs/plugins_config.vim' > ~/.vimrc

if [ -f plugins/Vundle.vim/README.md ]; then
    echo "Vundle alreadly exists!"
else
    echo "Install Vundle\n"
    mkdir -p ~/.vimJuang/plugins
    git clone https://github.com/VundleVim/Vundle.vim ~/.vimJuang/plugins/Vundle.vim
fi

echo "Install Plugins\n"
vim +PluginInstall +qall

echo "VimJuang Installed Successfully! Enjoy~"
echo "Any problems please contact Yi-Lin Juang (frankyjuang@gmail.com)"
