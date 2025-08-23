pkgs: {

  git = import ./git.nix;
  gh = import ./gh.nix;
  alacritty = import ./alacritty.nix pkgs;
  waybar = import ./waybar.nix;

  home-manager.enable = true;

  bash.enable = true;

  hyprlock = { enable = true; };
}
