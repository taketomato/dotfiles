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

# ターミナルにブランチ名を表示
source ~/.zsh/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '
