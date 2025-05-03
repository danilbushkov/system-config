{ pkgs, config, ... }:
let
  programs = import ./programs pkgs;
  hyprland = import ./window-manager/hyprland.nix pkgs;
in {

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  imports = [ ./wallpapers.nix ];

  programs = programs;

  wayland.windowManager.hyprland = hyprland.options;

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.11";

    packages =
      builtins.concatLists [ (import ./packages pkgs) hyprland.dependencies ];
  };

}
