setxkbmap no
export BROWSER=/usr/bin/google-chrome
export WORKON_HOME=~/.environments
export VIRTUALWRAPPER_PYTHON=/usr/bin/python2
source /usr/local/bin/virtualenvwrapper.sh

autoload omz
zstyle :omz:style theme nanotech2
plugins=(archlinux sprunge git)
omz init
