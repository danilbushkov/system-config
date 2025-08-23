pkgs: {

  alacritty = import ./alacritty.nix pkgs;
  waybar = import ./waybar.nix;

  home-manager.enable = true;

  hyprlock = { enable = true; };
}
