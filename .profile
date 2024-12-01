# My own script that can be execute
export PATH="$PATH:$HOME/scripts"
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:$HOME/package/istio-1.18.1/bin
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=/Applications/tinyMediaManager.app/Contents/MacOS:$PATH
export LIBRARY_PATH=/usr/local/lib
export CPLUS_INCLUDE_PATH=/usr/local/include

# Postgres
export PGDATA=/usr/local/var/postgres

# V2ray auto sync (My own script)
export V2RAY_CLIENT_CONFIG_LOC=/Users/ericwhite/repository/v2ray_config/client_end/config.json
export V2RAY_SERVER_CONFIG_LOC=/Users/ericwhite/repository/v2ray_config/server_end/config.json
export REMOTE_SSH=admin@ec2-18-162-198-96.ap-east-1.compute.amazonaws.com
export DOMAIN=blue.ericbai.top

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/usr/local/opt/riscv-gnu-toolchain/bin"
export PATH="$PATH:$HOME/Trading"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# Configure nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ericwhite/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ericwhite/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ericwhite/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ericwhite/google-cloud-sdk/completion.zsh.inc'; fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ericwhite/.pyenv/versions/anaconda3-2022.05/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ericwhite/.pyenv/versions/anaconda3-2022.05/etc/profile.d/conda.sh" ]; then
        . "/Users/ericwhite/.pyenv/versions/anaconda3-2022.05/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ericwhite/.pyenv/versions/anaconda3-2022.05/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Configure sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Configure gvm
[[ -s "/Users/ericwhite/.gvm/scripts/gvm" ]] && source "/Users/ericwhite/.gvm/scripts/gvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# Configure pyenv and jenv path
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# 配置binary程序
export PATH="/Users/ericwhite/go/bin":$PATH
export PATH="/Users/ericwhite/bin/google-sdks":$PATH
