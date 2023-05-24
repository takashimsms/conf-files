# conf-files
## Neovim
https://github.com/neovim/neovim<br>
追加で必要なもの
- vim-plug : https://github.com/junegunn/vim-plug プラグインマネージャー
- Nodejs : coc-nvimを使うために必要。自動補完ができるプラグイン
- Nerd font : https://github.com/ryanoasis/nerd-fonts 足りないフォントを追加する。UIがいい感じになってモチベが上がる。フォントをダウンロードしたらターミナル側の設定でフォントを変更することを忘れずに。

準備ができたら一度neovimを開き、`:PlugInstall`を実行しよう。
### Linux
aptなどでNeovimをインストールする場合バージョンが低くてプラグインが動かない可能性があるのでgithubからダウンロードした方がいいかも。<br>
~~`init.vim`を`~/.config/nvim/`へ移動させる。~~<br>
いちいちインストールの方法調べるのがだるいので`nvim_setup.sh`つくった。


### Windows
ダウンロード出来たら`C:\Program file\Neovim\bin\nvim.exe`のパスを通しておく。<br>
`init.vim`を`%USERPROFILE%\AppData\Local\nvim\`へ移動させる。
