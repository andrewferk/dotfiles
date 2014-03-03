# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:$HOME/.tmuxifier/bin"
export EDITOR=vim

# Load tmuxifier
export TMUXIFIER_LAYOUT_PATH=$HOME/.tmux
eval "$(tmuxifier init -)"
alias mux="tmuxifier load-window $1"
