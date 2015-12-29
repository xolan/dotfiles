# Usage

Available variants:
* arch
* osx

1. `homemaker/bin/homemaker --verbose -variant "arch" -task "bootstrap" config.toml ~/dotfiles`
2. `homemaker/bin/homemaker --verbose -variant "arch" config.toml ~/dotfiles`


# Installation

1. Install homemaker

```
GOPATH=${HOME}/dotfiles/homemaker go get github.com/FooSoft/homemaker
```

2. Install zim

```
git clone --recursive https://github.com/xolan/zim.git ${ZDOTDIR:-${HOME}}/.zim

# Copy or append templates
setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
  cat ${template_file} | tee -a ${ZDOTDIR:-${HOME}}/.$(basename ${template_file}) > /dev/null
done

# Change shell
chsh -s $(which zsh)

# Source once or logout/in again
source ${ZDOTDIR:-${HOME}}/.zlogin
```

