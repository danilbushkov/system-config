 #!/usr/bin/env bash

links=(
    "configuration.nix" "/etc/nixos/configuration.nix"
)


for((i=0;i<${#links[@]};i=i+2));
do
    sudo ln -s $PWD/${links[i]} ${links[i+1]}
done

# sudo ln -s $PWD/configuration.nix /etc/nixos/configuration.nix
