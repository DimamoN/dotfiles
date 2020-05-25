# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/dimamon/.oh-my-zsh"
export PATH=$HOME/bin:$PATH

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"
COMPLETION_WAITING_DOTS="true"
# CASE_SENSITIVE="true" #default=false

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git git-flow history node npm yarn docker docker-compose kubectl helm minikube osx zsh-autosuggestions zsh-completions)

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
alias dk=docker
alias dkc=docker-compose
alias dps="docker ps"
alias c=clear
alias v=vim
alias t=tree
alias q=exit
alias h=helm
alias rn=ranger
alias terr=terraform
alias terr_apply_force="terraform apply -auto-approve"
alias terr_destroy_force="terraform destroy -auto-approve"
alias mps=multipass

# dlang
alias dl=rdmd
alias dlt="rdmd -unittest"

# configs
alias edit_i3_config="vim ~/.i3/config"
alias edit_zsh_config="vim ~/.zshrc"
alias edit_ohmyzsh_config="vim ~/.oh-my-zsh"
alias edit_vimrc="vim ~/.vimrc"
alias edit_hosts="sudo vim /etc/hosts"

# docker
alias dkitrm="docker run -it --rm"
docker_delete_all_containers () { docker ps -a | awk '{print $1}' | xargs docker rm }
docker_delete_all_images () { docker images | awk '{print $3}' | xargs docker rmi }

# kubernetes
alias kx=kubectx
kgpg () { kubectl get pods | grep $1 }
k_run_debug_pod_ubuntu(){kubectl run -it --rm debug --image=ubuntu:18.04 --restart=Never -- bash}

# $1 - cert name
openssl_decrypt_cert(){
    openssl x509 -in $1 -noout -text > $1.decoded-cert.txt
}

# mac
function nf() {
    terminal-notifier -message $1 -sound submarine
}

source /Users/dmitrijgutman/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
