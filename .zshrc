# Firstly enable on-my-zsh
export ANTIGEN_PATH=/usr/local/share/antigen
source $ANTIGEN_PATH/antigen.zsh
antigen use oh-my-zsh


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Package manager
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle textmate 
antigen bundle mvn 
antigen bundle gradle 
antigen bundle vi-mode 

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

# manage on-my-zsh plug-ins
plugins=(autojump)

# Activate autojump
if [[ $(uname) = "Linux" ]]; then
  . /usr/share/autojump/autojump.sh
fi

# Set personal aliases
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
# Alias from COMP90054-2023S1 ai autonomy assignment 1
alias airun="bash ./docker/docker_runner.sh python"
alias kct="kubectl"
alias subre="python /Users/ericwhite/repository/Subtitles-Renamer/subsrenamer.py"

# Snippest
gitall() {
    echo ">>>>>>>> Add changes"
    git add .
    echo ">>>>>>>> Commit"
    git commit -m $1
    git status
}
