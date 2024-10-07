{ config, ... }: {

  git = import ./git.nix;
  starship = import ./starship.nix;
  alacritty = import ./alacritty.nix { inherit config; };

  home-manager.enable = true;

  bash.enable = true;

}
