#Install vim-plug for Unix:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cat ./.my_vimrc > ~/.vimrc
source ~/.vimrc
vim +'PlugInstall --sync' +qa
source ~/.vimrc

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clangd-completer

echo "Minimal vimrc installation is successfull!"
