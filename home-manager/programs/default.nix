pkgs: {

  git = import ./git.nix;
  gh = import ./gh.nix;
  starship = import ./starship.nix;
  alacritty = import ./alacritty.nix pkgs;
  waybar = import ./waybar.nix;

  home-manager.enable = true;

  bash.enable = true;

  hyprlock = { enable = true; };
}
