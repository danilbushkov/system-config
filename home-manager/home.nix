{ pkgs, config, ... }:
let
  programs = import ./programs config pkgs;
  hyprland = import ./windowManager/hyprland.nix pkgs;
in {

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  imports = [ ./wallpapers.nix ];

  programs = programs.options;

  wayland.windowManager.hyprland = hyprland.options;

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.11";

    packages = builtins.concatLists [
      (import ./packages pkgs)
      programs.dependencies
      hyprland.dependencies
    ];
  };

}
