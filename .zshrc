# Path to your Oh My Zsh installation.

export ZSH="$HOME/.oh-my-zsh"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/starship.toml

plugins=(git zoxide python zsh-autosuggestions zsh-syntax-highlighting)

export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# Path Variables
export EDITOR='nvim'
export VISUAL='nvim'
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"
export PATH="$HOME/Library/Python/3.12/bin:$PATH"
export DYLD_LIBRARY_PATH="/Applications/Postgres.app/Contents/Versions/16/lib:$DYLD_LIBRARY_PATH"
export TERM="xterm-256color"

if [ -x "$(command -v python3)" ]; then
    # Side note: 'python3 -m certifi' is also equivalent to
    # 'python3 -c "import certifi; print(certifi.where())"'                                                                                             
    export SSL_CERT_FILE="$(python3 -m certifi)"
    export REQUESTS_CA_BUNDLE="${SSL_CERT_FILE}"
    export PATH=$HOME/development/flutter/bin:$PATH
fi

[ -f "/Users/jasonzhong/.ghcup/env" ] && . "/Users/jasonzhong/.ghcup/env" # ghcup-env

alias ei="cd ~/Documents/Exam\ Insights/Code/v2/ExamInsightsMicroservices"
alias sshdo="ssh -i ~/.ssh/id_digitalocean root@134.199.166.127"

