#My own script that can be execute
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


# Configure nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# Configure pyenv and jenv path

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"


# Configure hadoop
# export PATH=$PATH:$JAVA_HOME/bin
export HADOOP_HOME=/Users/ericwhite/Hadoop/hadoop-3.3.1
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_YARN_HOME=$HADOOP_HOME

# export HADOOP_MAPRED_HOME=$HADOOP_HOME
# export HADOOP_COMMON_HOME=$HADOOP_HOME
# export HADOOP_HDFS_HOME=$HADOOP_HOME
# export YARN_HOME=$HADOOP_HOME
# export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
# export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"
## export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar
export SPARK_HOME=/Users/ericwhite/spark
export PATH=$SPARK_HOME/bin:$PATH 
## export HADOOP_CONF_DIR=$HADOOP_HOME/libexec/etc/hadoop
## export HADOOP_COMMON_HOME=$HADOOP_HOME/libexec/etc/hadoop
