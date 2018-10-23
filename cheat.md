### ssh keygen

`ssh-keygen -t ed25519 -C "sall"`

### postgres 起動

`postgres -D /usr/local/var/postgres/`


## 環境構築
### 設定ファイルのインストール
`git clone git@bitbucket.org:saikawa-studio/dotfiles.git`

### zshに切り替え
`chsh -s /bin/zsh` (brew で入れ直す場合は, 別途shellの登録が必要)

### zprezto のインストール

`git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"`

### 環境設定ファイルのエイリアスを登録
```
cd ~/dotfiles
./install.sh
```
