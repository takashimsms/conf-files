sudo apt-get update
sudo apt-get install ninja-build gettext cmake unzip curl npm
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd ~
git clone https://github.com/takashimsms/conf-files
mkdir ~/.config/nvim
mv ~/conf-files/init.vim ~/.config/nvim/
npm install nodejs
