# My own script that can be execute
export PATH="$PATH:$HOME/scripts"

export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/usr/local/smlnj/bin
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=/Applications/Racket\ v7.9/bin:$PATH
export LIBRARY_PATH=/usr/local/lib
export CPLUS_INCLUDE_PATH=/usr/local/include

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
export SPARK_HOME=/Users/ericwhite/bin/spark-3.1.2-bin-hadoop3.2

# Some Enviroment variable related to proxy
export https_proxy=http://127.0.0.1:8234
export http_proxy=http://127.0.0.1:8234
export all_proxy=socks5://127.0.0.1:8235

# Postgres
export PGDATA=/usr/local/var/postgres

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# Configure pyenv and jenv path

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"