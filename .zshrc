# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/dimamon/.oh-my-zsh"

# PATH
export PATH=$HOME/bin:$PATH

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git git-flow history node npm kubectl docker zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

#######################
##     DIMAMON       ##
#######################

# common
alias c=clear
alias v=vim
alias t=tree
alias q=exit
alias rn=ranger

# dlang
alias dl=rdmd
alias dlt="rdmd -unittest"

# configs
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# docker
docker_delete_all_containers () { docker ps -a | awk '{print $1}' | xargs docker rm }
docker_delete_all_images () { docker images | awk '{print $3}' | xargs docker rmi }

# kubernetes
alias kx=kubectx
kgpg () { kubectl get pods | grep $1 }
