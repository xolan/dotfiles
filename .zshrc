setxkbmap no
export BROWSER=/usr/bin/google-chrome
export WORKON_HOME=~/.environments
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
source /usr/bin/virtualenvwrapper.sh

source ~/dotfiles/scripts/alias

autoload omz
zstyle :omz:style theme nanotech2
plugins=(archlinux sprunge git)
omz init
