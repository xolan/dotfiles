#!/usr/bin/bash

echo "Bootstrapping OSX"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.0/install.sh | bash

bash <(curl https://nixos.org/nix/install)