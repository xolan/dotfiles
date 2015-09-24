export EDITOR=vim
export PATH=$PATH:/Users/xolan/Library/Android/sdk/platform-tools
export PATH=$PATH:/Users/xolan/Library/Android/sdk/tools

alias exa=$HOME/build/exa/target/exa
alias lss=exa
alias lll="exa -bghl"
alias l=lll

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true

# Postgres.app
POSTGRES_APP=/Applications/Postgres.app
path=("$POSTGRES_APP/Contents/Versions/9.3/bin" $path)
path=("$POSTGRES_APP/Contents/Versions/9.4/bin" $path)
