#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# PATHの設定

# takefuji研
take='http://web.sfc.keio.ac.jp/~takefuji'

# OPAM configuration
. /Users/AtsuoYamazaki/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# pyenv の設定
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

# go の作業ディレクトリ
export GOPATH="${HOME}/go"
export PATH="${GOPATH}/bin:${PATH}"

# 自作コマンド置き場
export PATH="${HOME}/bin:${PATH}"

# lsのエイリアス
alias la='ls -A'
alias lg='ls -Agh'
alias ll='ls -Ahl'
alias ld='ls -dh .*'
alias lld='ls -ldh .*'
alias dict='vi ~/dictionary'
# 確認
alias cp='cp -i'
alias mv='mv -i'

# 省略
alias vi='vim'
alias g='git'
alias e='echo'
alias cn='cat -n'
alias rb='ruby'
alias c="powered_cd"
alias noti='terminal-notifier -message "コマンド完了" ; say "コマンドが完了しました" '
alias ax='axel -a -n 10'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# コマンドラインから起動
alias xcode='open -a /Applications/Xcode.app'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Homebrew
alias brewup='brew update && brew upgrade && brew cleanup'

# クリップボードにコピー
alias -g C='| pbcopy'
alias -g G='| grep'

# 設定ファイルをどっからでもすぐ開く
alias -g zrc='~/.zshrc'
alias -g vrc='~/.vimrc'
alias -g gvrc='~/.gvimrc'

# Preztoアップデート
alias preup='cd ~/.zprezto && git pull && git submodule update --init --recursive && cd ~'

# zsh-completionsの設定
fpath=(path/to/zsh-completions/src $fpath)

# enhancdを読み込む
source ~/.enhancd/init.sh

# 時間のかかる処理を通知する
REPORTTIME=1

# python の activateのフルパス指定　詳しくは http://qiita.com/y__sama/items/f732bb7bec2bff355b69を見よ
alias activate="source $PYENV_ROOT/versions/anaconda3-2.5.0/bin/activate"
