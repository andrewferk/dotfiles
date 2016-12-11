# Configure oh-my-zsh
export ZSH=/Users/aferk/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git osx vagrant zsh-nvm)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR=vim

# Load tmuxifier
#export TMUXIFIER_LAYOUT_PATH=$HOME/.tmux
#eval "$(tmuxifier init -)"
#alias mux="tmuxifier load-window $1"

# Configure jenv
export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Configure nvm
export NVM_DIR="/Users/aferk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
