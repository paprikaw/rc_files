# Path to your oh-my-zsh installation.
source /usr/local/share/antigen/antigen.zsh
# source $ZSH/oh-my-zsh.sh
# export ZSH=$HOME/.oh-my-zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Package manager
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle textmate 
antigen bundle mvn 
antigen bundle gradle 
antigen bundle vi-mode 
antigen bundle autojump
# Auto suggestions bundle
antigen bundle zsh-users/zsh-autosuggestions
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k
# Tell Antigen that you're done.
antigen apply
# Plugin
# plugins=(git 
# 	textmate 
# 	ruby 
# 	osx 
# 	mvn 
# 	gradle 
# 	vi-mode 
#     autojump
# 	zsh-autosuggestions)

# User configuration
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
# export PATH=${PATH}:/Users/ericwhite/Library/Python/3.7/bin
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
 
# Remove the user@hostname prompt
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
# #    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

# Referred to .profile
source $HOME/.profile

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias py="python3"
alias pip=pip3
alias gg="git status"
alias vl="cat /usr/local/var/log/v2ray/error.log" # v2ray log
alias sv="brew services" # services
alias sc="sh $HOME/repository/shell_script_learning/v2ray-deployment/sync-config.sh"
alias firefox=/Applications/Firefox.app/Contents/MacOS/firefox
alias mr="cd ~/repository"
alias ll="ls -la"
alias mp="cd ~/Projects"

alias links="ssh z5292197@login.cse.unsw.edu.au"

# Snippest
gitall() {
    echo ">>>>>>>> Add changes"
    git add .
    echo ">>>>>>>> Commit"
    git commit -m $1
    git status
}

# Proxy settings
# surge listen to these ports
export https_proxy=http://127.0.0.1:8234
export http_proxy=http://127.0.0.1:8234
export all_proxy=socks5://127.0.0.1:8235
