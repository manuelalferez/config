# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

export PATH=/opt/homebrew/bin:$PATH

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
envs () {
 ENV_FILE=".env"
 export $(grep -v '^#' $ENV_FILE)
}

export PATH="$PATH:/Users/$(whoami)/.local/bin"

eval "$(register-python-argcomplete pipx)"

function h() {
 cd ~/github/metis-ai/bots-definition
}
