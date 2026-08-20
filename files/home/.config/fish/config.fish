set fish_greeting

fish_add_path -g $HOME/.local/bin
fish_add_path -g $HOME/.cargo/bin/
fish_add_path -g $HOME/.bun/bin
source ~/.aliases/alias.fish

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

eval "$(/usr/bin/mise activate fish)"

if status is-interactive
# Commands to run in interactive sessions can go here
end
