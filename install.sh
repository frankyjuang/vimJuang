cd ~/.vimJuang

echo 'set runtimepath+=~/.vimJuang

source ~/.vimJuang/vimrcs/basic.vim
source ~/.vimJuang/vimrcs/filetypes.vim
source ~/.vimJuang/vimrcs/plugins_config.vim
source ~/.vimJuang/vimrcs/extended.vim

try
source ~/.vimJuang/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
