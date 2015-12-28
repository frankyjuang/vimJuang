echo 'set runtimepath+=~/.vimJuang

source ~/.vimJuang/vimrcs/basic.vim
source ~/.vimJuang/vimrcs/filetypes.vim
source ~/.vimJuang/vimrcs/plugins_config.vim' > ~/.vimrc

mkdir -p ~/.vimJuang/plugins
git clone https://github.com/VundleVim/Vundle.vim ~/.vimJuang/plugins/Vundle.vim

vim +PluginInstall +qall

echo 'vimJuang install completed'
