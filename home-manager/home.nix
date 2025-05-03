{ pkgs, ... }:
let programs = import ./programs pkgs;
in {

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  imports = [ ./wallpapers.nix ./modules/window-manager ];

  programs = programs;

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.11";

    packages = (import ./packages pkgs);
  };

}
