# Enable Powerlevel10k instant prompt. This should remain near the top of ~/.zshrc.
# Initialization code that might require console input (e.g., password prompts, [y/n] confirmations)
# should be placed above this block; other configurations can be placed below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Adjust your $PATH if you're coming from bash.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Function to set the terminal title.
function set_title() {
    echo -ne "\033]0;better call platform\007"
}
precmd_functions+=(set_title)

# kube-ps1 settings for Kubernetes prompt info.
PS1='[\u@\h \W $(kube_ps1)]\$ '

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Specify the theme to use. If set to "random", it will load a random theme each time oh-my-zsh starts.
# To find out which theme was loaded when using "random", execute: echo $RANDOM_THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins to load. Standard plugins are located in $ZSH/plugins/
# You can also add custom plugins to $ZSH_CUSTOM/plugins/
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User specific configurations

# Set aliases. Though you can place aliases here, it's recommended to define them 
# within the ZSH_CUSTOM folder for oh-my-zsh users. To see all active aliases, run `alias`.
alias test="awsx test && kubectx test"
alias prod="awsx prod && kubectx prod"

# To customize the Powerlevel10k prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable kubectl autocompletion for zsh.
if [  ]; then source <(kubectl completion zsh); fi

# Go language configuration.
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Alias for colored kubectl.
alias kubectl=kubecolor
