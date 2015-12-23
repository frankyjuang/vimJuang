###Install Configurations###

echo "Installing vimJuang Configurations..."

echo 'set runtimepath+=~/.vimJuang

source ~/.vimJuang/vimrcs/basic.vim
source ~/.vimJuang/vimrcs/filetypes.vim
source ~/.vimJuang/vimrcs/plugins_config.vim' > ~/.vimrc

echo "Successfully Install vimJuang Configurations!!!"

###Install Plugins###

echo "Installing Plugins..."

vim +PluginInstall +qall

echo "Successfully Install Plugins!!!"

echo "Enjoy~~~!!!"
