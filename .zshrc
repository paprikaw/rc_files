source $HOME/.profile
# Path to your antigen path 
source $ANTIGEN_PATH/antigen.zsh
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
# antigen bundle autojump
# Auto suggestions bundle
antigen bundle zsh-users/zsh-autosuggestions
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# node version manager
antigen bundle lukechilds/zsh-nvm

# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k
# Tell Antigen that you're done.
antigen apply

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Remove the user@hostname prompt
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
# #    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias py="python"
alias pip="python -m pip"
alias gg="git status"
alias vl="cat /usr/local/var/log/v2ray/error.log" # v2ray log
alias sv="brew services" # services
alias sc="sh $HOME/repository/shell_script_learning/v2ray-deployment/sync-config.sh"
alias firefox=/Applications/Firefox.app/Contents/MacOS/firefox
alias mr="cd ~/repository"
alias ll="ls -la"
alias mp="cd ~/Projects"
alias pg="pg_ctl"
alias listen_proc="sudo lsof -i -P | grep LISTEN"
alias links="ssh z5292197@login.cse.unsw.edu.au"
alias linksr="ssh z5292197@grieg.cse.unsw.edu.au"

alias hstart="/usr/local/Cellar/hadoop/3.3.1/sbin/start-all.sh"
alias hstop="/usr/local/Cellar/hadoop/3.3.1/sbin/stop-all.sh"
alias nacos="sh ~/app/nacos/bin/startup.sh"
alias arc="cd ~/archive"
alias repo="cd ~/repository"
alias yarn="/Users/ericwhite/.nvm/versions/node/v16.10.0/bin/yarn"
alias tmp="vi ~/tmp.md"
alias hide="chflags hidden /Users/ericwhite/Desktop/*"
alias show="chflags nohidden /Users/ericwhite/Desktop/*"

# Snippest
gitall() {
    echo ">>>>>>>> Add changes"
    git add .
    echo ">>>>>>>> Commit"
    git commit -m $1
    git status
}
