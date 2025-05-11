export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_MAGIC_FUNCTIONS="true"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/.local/bin:$PATH