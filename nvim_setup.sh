cd `dirname $0`
cd ~
sudo apt-get update
sudo apt-get install ninja-build gettext cmake unzip curl -y
# sudo apt-get install npm -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd ~
mkdir ~/.config
mkdir ~/.config/nvim
mv ~/conf-files/init.vim ~/.config/nvim/
# sudo npm install -g n
# sudo n install latest
