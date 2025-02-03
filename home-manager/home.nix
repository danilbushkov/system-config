{ pkgs, config, ... }:
let
  programs = import ./programs/default.nix config pkgs;
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
      (import ./packages/default.nix pkgs)
      programs.dependencies
      hyprland.dependencies
    ];
  };

}
