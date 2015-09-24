# load zgen
source "${HOME}/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    # prezto options
    zgen prezto editor key-bindings 'emacs'

    # prezto and modules
    zgen prezto
    zgen prezto git
    zgen prezto python
    zgen prezto ruby
    zgen prezto node
    zgen prezto command-not-found
    zgen prezto syntax-highlighting

    # plugins
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load zsh-users/zsh-completions src

    #zgen load ~/dotfiles/shell/prezto/theme/xolan

    zgen prezto prompt theme 'sorin'

    # save all to init script
    zgen save
fi
