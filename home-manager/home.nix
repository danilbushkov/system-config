{ pkgs, ... }:
let programs = import ./programs pkgs;
in {

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  imports = [ ./wallpapers.nix ./modules/window-manager ./modules/console ];

  programs = programs;

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "25.05";

    packages = (import ./packages pkgs);
  };

}
