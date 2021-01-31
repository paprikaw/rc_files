# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"


# Plugin
plugins=(git 
	textmate 
	ruby 
	autojump 
	osx 
	mvn 
	gradle 
	vi-mode 
	zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# 
alias py="python3"
#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Remove the user@hostname prompt
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Referred to .profile

source $HOME/.profile
alias pip=pip3
alias gg="git status"
alias vl="cat /usr/local/var/log/v2ray/error.log" # v2ray log
alias sv="brew services" # services
alias sc="sh $HOME/repository/shell_script_learning/v2ray-deployment/sync-config.sh"
alias firefox=/Applications/Firefox.app/Contents/MacOS/firefox
alias mr="cd ~/repository"

# Snippest
gitall() {
    echo ">>>>>>>> Add changes"
    git add .
    echo ">>>>>>>> Commit"
    git commit -m $1
    git status
}
