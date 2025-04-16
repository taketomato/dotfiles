# zsh でタブキーによる補完を有効にする
autoload -Uz compinit && compinit

# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# source
source ~/.alias

# rbenv の初期化
eval "$(rbenv init -)"

# export
export PATH=/usr/local/bin/git:$PATH # HomebrewのGitを使うパス
